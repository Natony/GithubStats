import sys
from PyQt5.uic import loadUi
from PyQt5 import QtWidgets
from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QApplication, QDialog
import resource
from out_window import Ui_OutputDialog

class Ui_Dialog(QDialog):
    def __init__(self):# Khởi tạo các biến cho class UI_Dialog
        super(Ui_Dialog, self).__init__()
        loadUi("mainwindow.ui", self) 
        self.runButton.clicked.connect(self.runSlot) #Khi nhấn nút Start trong giao diện main gọi tới hàm ruSlot
        self._new_window = None # Khởi tạo biến 

    def runSlot(self):
        ui.hide()  # Ẩn main Window
        self.outputWindow_()  # Tạo và mở output window

    def outputWindow_(self):
        self._new_window = Ui_OutputDialog() #Tạo class Ui_OutputDialog
        self._new_window.show() #Hiển thị output Window
        self._new_window.startVideo() #Gọi hàm startVideo của class Ui_OutputDialog
# Hiển thị giao diện ban đầu
if __name__ == "__main__":
    app = QApplication(sys.argv)
    ui = Ui_Dialog()
    ui.show()
    sys.exit(app.exec_())
