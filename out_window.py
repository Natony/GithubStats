from PyQt5.QtGui import QImage, QPixmap
from PyQt5.uic import loadUi
from PyQt5.QtCore import pyqtSlot, QTimer, QDate, Qt
from PyQt5.QtWidgets import QDialog,QMessageBox,QApplication
import cv2
import face_recognition
import numpy as np
import datetime
import os
import csv
import sys

class Ui_OutputDialog(QDialog):
    def __init__(self): #Khai báo vào load form output_window
        super(Ui_OutputDialog, self).__init__()
        loadUi("./outputwindow.ui", self)

        self.Button_exit.clicked.connect(self.exit) #Khi nhấn nút Button_exit thì truy xuất tới hàm exit
        now = QDate.currentDate() #Tạo biến lưu ngày hiện tại
        current_date = now.toString('ddd dd MMMM yyyy') # Ép kiểu string cho biến ngày
        current_time = datetime.datetime.now().strftime("%I:%M %p") #Tạo biến lưu thời gian
        self.Date_Label.setText(current_date) #Hiển thị ngày trên giao diện output_window
        self.Time_Label.setText(current_time) #Hiển thị thời gian trên giao diện output_window
        self.image = None #Tạo biến image để lưu ảnh 

    def exit(self):
        self.close() #Đóng cửa sổ output_window

    def startVideo(self):
        self.capture = cv2.VideoCapture(0) #Bật cam
        self.timer = QTimer(self)  # Tạo biến timer
        path = 'ImagesAttendance' #Tạo biến lưu tên forder chứa hình so sánh
        images = [] #Tạo mãng để lưu hình so sánh
        self.class_names = [] #Tạo mãng lưu để lưu tên hình có trong list ảnh so sánh
        self.encode_list = [] #Tạo mãng lưu giá trị khi mã hóa hình so sánh
        self.TimeList1 = [] #Tạo mãng lưu thời gian clock_in
        self.TimeList2 = [] #Tạo mãng lưu thời gian clock_out
        attendance_list = os.listdir(path)  #Tạo mãng chứa tên hình so sánh

        for cl in attendance_list:
            cur_img = cv2.imread(f'{path}/{cl}') #Đọc ảnh có trong mãng attendance_list
            images.append(cur_img) #Thêm ảnh đã đọc vào mãng images
            self.class_names.append(os.path.splitext(cl)[0]) #Thêm tên của hình đã đọc vào mãng class_names
        for img in images:
            img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB) #Chuyển từ kênh màu BRG sang RGB
            boxes = face_recognition.face_locations(img) #Định vị khuôn mặt có trong ảnh
            encodes_cur_frame = face_recognition.face_encodings(img, boxes)[0] #Mã hóa khuôn mặt định vị ở trên trong ảnh img
            self.encode_list.append(encodes_cur_frame) #Thêm giá trị đã mã hóa vào mãng encode_list
        self.timer.timeout.connect(self.update_frame)  # Connect timeout to the output function
        self.timer.start(10)  #Set thời gian chụp của web cam, 10ms 1 lần

    def face_rec_(self, frame, encode_list_known, class_names):
        #
        def mark_attendance(name):
            if self.ClockInButton.isChecked(): #Kiểm tra nút ClockIn được bấm hay ko
                self.ClockInButton.setEnabled(False) #Làm chìm nút ClockIn 
                with open('Attendance.csv', 'a') as f: #Mở file Attendance.csv
                        if (name != 'unknown'): #Kiểm tra ảnh từ web cam được nhận dạng hay chưa
                            buttonReply = QMessageBox.question(self, 'Welcome ' + name, 'Are you Clocking In?' ,
                                                               QMessageBox.Yes | QMessageBox.No, QMessageBox.No) #Mở cửa sổ để xác nhận người dùng có muốn ClockIn
                            if buttonReply == QMessageBox.Yes: #Kiểm tra người dùng chọn gì

                                date_time_string = datetime.datetime.now().strftime("%y/%m/%d %H:%M:%S") #Tạo biến lưu ngày giờ hiện tại 
                                f.writelines(f'\n{name},{date_time_string},Clock In') #Viết vào file excel Attendance.csv
                                self.ClockInButton.setChecked(False) #Ẩn cửa sổ xác nhận 

                                self.NameLabel.setText(name) #Hiển thị tên người ClockIn trong NameLabel
                                self.StatusLabel.setText('Clocked In') #Hiện thị trạng thái trong StatusLabel
                                self.HoursLabel.setText('Measuring') #Hiển thị Measuring trong HoursLabel
                                self.MinLabel.setText('') #Không hiển thị bất cứ gì trong MinLabel
                                self.Time1 = datetime.datetime.now() #Set biến Time1 là thời gian hiện tại
                                self.ClockInButton.setEnabled(True) #Hiện lại nút ClockIn
                            else:
                                self.ClockInButton.setChecked(False) #Ẩn cửa sổ xác nhận 
                                self.ClockInButton.setEnabled(True) #Hiện lại nút ClockIn
                        else: #Trường hợp không nhận dạng được khuôn mặt có trong danh sách so sánh
                            buttonReply = QMessageBox.question(self,'Welcome', 'You are not staff.Exit?',QMessageBox.Yes) #Hiển thị hợp thoại thông báo người dùng ko phải nhân viên và kêu người dùng bấm nút Yes
                            if buttonReply == QMessageBox.Yes: #Kiểm tra giá trị trả về của  buttonReply
                                self.NameLabel.setText(name) #Hiển thị unknown trong NameLabel
                                self.StatusLabel.setText('Not staff') #Hiển thị Not staff trong StatusLabel
                                self.HoursLabel.setText('') #Không hiển thị 
                                self.MinLabel.setText('') #Không hiển thị
                                self.ClockInButton.setChecked(False) #Ẩn cửa sổ thông báo
                                self.ClockInButton.setEnabled(True) #Hiện lại nút ClockIn
            elif self.ClockOutButton.isChecked(): #Kiểm tra nút ClockOut được bấm hay ko
                self.ClockOutButton.setEnabled(False) #Làm chìm nút ClockOut 
                with open('Attendance.csv', 'a') as f: #Mở file Attendance.csv
                        if (name != 'unknown'): #Kiểm tra ảnh từ web cam được nhận dạng hay chưa
                            buttonReply = QMessageBox.question(self, 'Cheers ' + name, 'Are you Clocking Out?',
                                                              QMessageBox.Yes | QMessageBox.No, QMessageBox.No) #Mở cửa sổ để xác nhận người dùng có muốn ClockOut
                            if buttonReply == QMessageBox.Yes: #Kiểm tra người dùng chọn gì
                                date_time_string = datetime.datetime.now().strftime("%y/%m/%d %H:%M:%S") #Tạo biến lưu ngày giờ hiện tại 
                                f.writelines(f'\n{name},{date_time_string},Clock Out') #Viết vào file excel Attendance.csv
                                self.ClockOutButton.setChecked(False) #Ẩn cửa sổ xác nhận 

                                self.NameLabel.setText(name) #Hiển thị tên người ClockOut trong NameLabel
                                self.StatusLabel.setText('Clocked Out') #Hiện thị trạng thái trong StatusLabel
                                self.Time2 = datetime.datetime.now() #Tạo biến Time2 lưu thời gian hiện tại

                                self.ElapseList(name) #Gọi hàm ElapseList
                                self.TimeList2.append(datetime.datetime.now())
                                CheckInTime = self.TimeList1[-1] #Lấy thời gian mới nhất trong mãng TimeList1
                                CheckOutTime = self.TimeList2[-1] #Lấy thời gian mới nhất trong mãng TimeList2
                                self.ElapseHours = (CheckOutTime - CheckInTime) #Tính thời gian từ lúc ClockIn tới lúc ClockOut
                                self.MinLabel.setText("{:.0f}".format(abs(self.ElapseHours.total_seconds() / 60)%60) + 'm') #Tính toán và đổi sang phút
                                self.HoursLabel.setText("{:.0f}".format(abs(self.ElapseHours.total_seconds() / 60**2)) + 'h') #Tính toán và đổi sang giờ
                                self.ClockOutButton.setEnabled(True)  #Hiện lại nút ClockIn
                            else:
                                self.ClockOutButton.setChecked(False) #Ẩn cửa sổ xác nhận 
                                self.ClockOutButton.setEnabled(True)
        faces_cur_frame = face_recognition.face_locations(frame) #Định vị khuôn mặt có trong ảnh lấy được từ web cam
        encodes_cur_frame = face_recognition.face_encodings(frame, faces_cur_frame) #Mã hóa khuôn mặt vừa định vị được
        for encodeFace, faceLoc in zip(encodes_cur_frame, faces_cur_frame): #Quét đồng thời hai mãng encodes_cur_frame, faces_cur_frame
            match = face_recognition.compare_faces(encode_list_known, encodeFace, tolerance=0.50) #So sánh giá trị vừa mã hóa vs giá trị mã hóa có được từ danh sách hình mẫu 
            face_dis = face_recognition.face_distance(encode_list_known, encodeFace) #Tính toán giá trị sai khác của hình được mã hóa từ web cam vs hình có trong mẫu và lưu thành một mãng
            name = "unknown" #Tạo biến name để lưu tên 
            best_match_index = np.argmin(face_dis) #Lưu vị trí có giá trị nhỏ nhất trong mãng face_dis
            if match[best_match_index]: #Kiểm tra giá trị tại vị trí best_match_index trong mãng match là true hay false
                name = class_names[best_match_index].upper() #Lưu tên ảnh có trong mãng class_names tại vị trí best_match_index
                y1, x2, y2, x1 = faceLoc #Lấy vị trí khuôn mặt trong ảnh có được từ web cam
                cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2) #Tạo hình chữ nhật màu xanh quanh khuôn mặt
                cv2.rectangle(frame, (x1, y2 - 20), (x2, y2), (0, 255, 0 ), cv2.FILLED) #Tạo hình chữ nhật phía dưới khung được tô màu xanh toàn bộ
                cv2.putText(frame, name, (x1 + 6, y2 - 6), cv2.FONT_HERSHEY_COMPLEX, 0.5, (255, 255, 255), 1) #Hiển thị tên lấy được ở mãng class_names và khung màu xanh được tô toàn bộ
            mark_attendance(name) #Gọi hàm mark_attendance
        return frame

    def ElapseList(self,name):
        with open('Attendance.csv', "r") as csv_file: #Mở file Attendance.csv
            csv_reader = csv.reader(csv_file, delimiter=',') #Tạo ma trận 2 chiều từ file sv_file
            Time1 = datetime.datetime.now() #Tạo biến Time1 lưu thời gian hiện tại
            Time2 = datetime.datetime.now() #Tạo biến Time2 lưu thời gian hiện tại
            for row in csv_reader: #Quét hàng trong ma trận csv_reader
                for field in row: #Quét từ ô trong hàng 
                        if field == 'Clock In': #Kiểm tra ô có phải ClockIn ko 
                            if row[0] == name:  #Kiểm tra tên ở ô đầu tiên trong hàng có giống với biến name ko
                                Time1 = (datetime.datetime.strptime(row[1], '%y/%m/%d %H:%M:%S')) #Lấy thời gian ở ô thứ 2 cùng hàng lưu vào biến Time1
                                self.TimeList1.append(Time1) #Thêm biến Time1 vào mãng TimeList1
                        if field == 'Clock Out': #Kiểm tra ô có phải ClockIn ko 
                            if row[0] == name: #Kiểm tra tên ở ô đầu tiên trong hàng có giống với biến name ko
                                Time2 = (datetime.datetime.strptime(row[1], '%y/%m/%d %H:%M:%S')) #Lấy thời gian ở ô thứ 2 cùng hàng lưu vào biến Time2
                                self.TimeList2.append(Time2)  #Thêm biến Time2 vào mãng TimeList2

    def update_frame(self):
        ret, self.image = self.capture.read() #Đọc hình lấy được từ web cam cho biến image
        self.displayImage(self.image, self.encode_list, self.class_names) #Gọi hàm displayImage

    def displayImage(self, image, encode_list, class_names):
        image = cv2.resize(image, (640, 480)) #Thu nhỏ kích thước ảnh để giảm tải quá trình tính toán 
        image = self.face_rec_(image, encode_list, class_names) #Gọi hàm face_rec_
        qformat = QImage.Format_Indexed8 #Lưu ảnh vs dạng ma trận 8bit
        if image.shape[2] == 4: #Kiểm tra ảnh có mấy lớp
            qformat = QImage.Format_RGBA8888 #Đưa về định dạng 4 lớp
        else:
            qformat = QImage.Format_RGB888 #Đưa về định dạng 3 lớp
        outImage = QImage(image, image.shape[1], image.shape[0], image.strides[0], qformat) #Tạo ảnh theo thuộc tính ảnh image
        outImage = outImage.rgbSwapped() #Chuyển ảnh về không gian rgb
        self.imgLabel.setPixmap(QPixmap.fromImage(outImage)) #Hiển thị ảnh lên imgLabel
        self.imgLabel.setScaledContents(True) #Điều chỉnh cho ảnh vừa khớp với khung 
#Khai báo biến kiểu Class Ui_OutputDialog nhắm mục đích thoát chương trình
if __name__ == "_out_window_":
    app = QApplication(sys.argv)
    ui = Ui_OutputDialog()
    sys.exit(app.exec_())
