<%@ Page Language="C#" AutoEventWireup="true" CodeFile="topic_1.aspx.cs" Inherits="topic_1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đề tài - SCADA</title>
   <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <style>
        body{
            width:100%;
            height:100vh;
            background-color: rgb(255, 255, 255);
            background-size:100%;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="img"> 
            <img class="img_resize" src="img/logo_truong.png" />
        </div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <div id="App_SideWrap">
            <div>
                <ul>
                    <li>
                        <a href="main.aspx" id="li_home">Trang Chủ</a> 
                     </li>
                     <li>
                         <a href="dtb_1.aspx" id="li_dtb">Dữ Liệu</a>
                        <ul class="sub-menu">
                            <li>
                                <a href="dtb_1.aspx">Dữ Liệu Hệ Thống 1</a>
                            </li>
                            <li>
                                <a href="dtb_2.aspx">Dữ Liệu Hệ Thống 2</a>
                            </li>
                        </ul>
                     </li>
                    <li>
                        <a id="li_lookup">Tra Cứu Dữ Liệu</a>
                        <ul class="sub-menu">
                            <li>
                                <a href="lookup.aspx">Tra Cứu Dữ Liệu Hệ Thống 1</a>
                            </li>
                            <li>
                                <a href="lookup_2.aspx">Tra Cứu Dữ Liệu Hệ Thống 2</a>
                            </li>                               
                        </ul>
                    </li>
                    <li>
                        <a href="topic_1.aspx" id="li_topic">Giới Thiệu Đề Tài</a>
                        <ul class="sub-menu">
                            <li>
                                <a href="topic_1.aspx">Hệ Thống Chiết Rót Nước Tự Động</a>
                            </li>
                            <li>
                                <a href="topic_2.aspx">Hệ Thống Sản Xuất Bánh Tự Động</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <div class="topic-content">
            <div style =" margin: 10px auto 10px 20px">
                 <h1 style ="font-size: 2rem; font-family:serif; color: red; text-align: center"> Hệ Thống Chiết Rót Nước Tự Động</h1>
            </div>
            <div>
                <h1 style ="font-size: 1.8rem; margin: 25px auto auto 300px; font-family:serif; color: red"> 1. Hình Ảnh Minh Họa Giám Sát SCADA</h1>
                <div style ="text-align: center; margin-top: 25px">
                    <img src ="img/he_thong.jpg"  style =" width: 50%;"/>
                </div>
            </div>
            <div>
                <h1 style ="font-size: 1.8rem; margin: 25px auto auto 300px; font-family:serif; color: red"> 2. Video Mô Phỏng Giám Sát SCADA</h1>
            </div>
            <div style ="text-align: center; margin-top: 25px">
                <video width="50%" src="Video/Video.mp4" type="video/mp4" controls></video>
            </div>
            <div>
                <h1 style ="font-size: 1.8rem; margin: 25px auto auto 300px; font-family:serif; color: red"> 3. Video Minh Họa Hệ Thống Thực Tế</h1>
            </div>
            <div style ="text-align: center; margin-top: 25px">
                <video width="50%" src="Video/he_thong_chiet_rot.mp4" type ="video/mp4" controls></video>
            </div>
            <div style ="margin-bottom: 10px; margin-left: 20px; text-align: justify">
                <h1 style ="font-size: 1.6rem; text-align: justify">1. Hệ thống chiết rót đóng chai là gì?</h1>
            </div>
            <p  style ="font-size: 1.3rem; margin: 10px 20px auto 20px; line-height: 30px;text-align: justify" >
                -	Hệ thống làm bánh tự động là một loại máy hoặc dây chuyền sản xuất được thiết kế để tự động sản xuất các loại bánh và sản phẩm bánh ngọt khác.
            </p>
            <p style ="font-size: 1.3rem; margin: 10px 20px auto 20px; line-height: 30px; text-align: justify">
                -	Nó bao gồm các thiết bị và máy móc được kết hợp với các hệ thống điều khiển và phần mềm để thực hiện các công đoạn sản xuất bánh từ quá trình trộn nguyên liệu cho đến giai đoạn hoàn thiện và đóng gói sản phẩm.
            </p>
            <p style ="font-size: 1.3rem; margin: 10px 20px 30px 20px; line-height: 30px; text-align: justify">
                -	Chiết rót và đóng nắp chai là hệ thống máy sản xuất nước đang rất được nhiều người sản xuất lựa chọn vì nhu cầu của người tiêu dùng đang hướng tới dòng sản phẩm nước đóng chai để đảm bảo đủ độ vệ sinh và an toàn, tiện lợi khi sử dụng.
            </p>
            <div style ="text-align: center" >
                <img id="pic_topic1_1" src="img/img1_1.jpg" alt="hinh1_1"/>
            </div>
            <h1 style ="font-size: 1.6rem; margin: 30px auto 10px 20px">2.	Cấu tạo của 1 hệ thống chiết rót nước đóng chai.</h1>
            <p style ="font-size: 1.3rem; margin: 10px 20px 30px 20px; text-align: justify">
                -	Bộ phận chiết rót : Bộ phận chiết rót là một bộ phận của hệ thống chiết rót đóng chai áp dụng các nguyên lý chiết rót để hút chất lỏng ra khỏi thùng chứa.
            </p>
           <div style ="text-align: center">
                <img id="pic_topic2_1" src="img/img2_1.jpg" alt="hinh1_1"/>
           </div>
            <p style ="font-size: 1.3rem; margin: 30px 20px 30px 20px; text-align: justify">
                -   Bộ phận đóng nắp chai: Đóng nắp chai là nơi các chai đã được chiết rót đầy được đóng kính bằng nắp ren, nắp ấn hoặc nắp có vòi.
            </p>
            <div style ="text-align: center">
                <img id="pic_topic2_2" src="img/img2_2.jpg" alt="hinh1_1"/>
            </div>
            <p style ="font-size: 1.3rem; margin: 30px 20px 10px 20px; text-align: justify">
                -	Bộ phận đóng thùng sản phẩm: đếm số sản phẩm theo cài đặt trên màn hình HMI để đóng thùng theo đúng yêu cầu của nhà sản xuất.
            </p>

            <div style =" margin: 0px auto 0px 20px">
                <h1 style ="font-size: 1.6rem ">3.	Những thiết bị được sử dụng trong hệ thống.</h1>
            </div>
            <p style ="font-size: 1.3rem; margin: 10px 20px 10px 20px; text-align: justify">
                -	Cảm biến quang: Với chức năng xác định vị trí của sản phẩm khi gặp, cảm biến sẽ có tín hiệu báo về bộ điều khiển. Cảm biến gồm có nguồn phát quang là ed hoặc laser, bộ thu quang sử dụng các diode hoặc các transistor.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Băng tải: dùng để di chuyển sản phẩm qua các khâu của hệ thống, được điều khiển bằng những tín hiệu của cảm biến.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Bồn chứa: dùng để chứa chất lỏng cần được chiết rót vào chai đựng.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Cảm biến cạn: dùng để cảnh báo khi mực nước của chất lỏng thấp hơn mức cho phép.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Xilanh: dùng cho nhiều mục đích khác nhau: nhấc sản phẩm, kẹp sản phẩm, đưa sản phẩm vào thùng…
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Động cơ: sử dụng nhiều loại với nhiều mức công suất khác nhau tùy thuộc vào mục đích sử dụng, ví dụ: bơm nước chiết rót, quay băng tải, quay mâm xoay, quay đóng nắp chai…
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	PLC S7-1200: bộ điều khiển chính của hệ thống, sử dụng chương trình đã được lập trình sẵn được tùy chỉnh theo yêu cầu của người dùng và điều khiển hệ thống theo cách tối ưu nhất.
            </p>
            <div style =" margin: 0px auto 10px 20px">
                <h1 style ="font-size: 1.6rem ">4.	Miêu tả quy trình hoạt động của hệ thống</h1>
            </div>
                <p style ="font-size: 1.3rem; margin: 0px 20px 30px 20px; line-height: 30px; text-align: justify">
                -	Nhấn nút Start, băng tải 1 quay đưa chai đựng vào vị trí chiết rót. Sau thời gian chiết rót đến mức quy định, mâm xoay quay đưa chai qua khâu đóng nắp. Chai đựng sau khi đã được rót nước và đóng nắp sẽ tiếp tục được xoay đưa chai qua băng tải 2 và chờ. Chu trình chiết rót và đóng nắp sau khi được thi hành cho 2 sản phầm sẽ tiếp tục với việc 2 chai đựng được 1 xi lanh ở băng tải 2 đẩy ra đến nơi chờ tiếp theo(đây cũng là vị trí có cửa trượt). Sau khi chu trình trên được thực hiện 6 lần ( 6 chai đã được chiết rót ,đóng nắp và đưa đến nơi chờ) , 1 cơ cấu xilanh sẽ tiến hành kẹp và gắp 6 sản phẩm lên. Tiếp đó, cửa trượt mở ra xilanh gắp đưa 6 sản phẩm xuống thùng, xilanh kẹp nhả sản phẩm ra, xilanh gắp thu về, cửa trượt đóng lại, kết thúc 1 chu trình chuẩn. Hệ thống sẽ lặp đi lặp lại chu trình trên và chỉ dừng khi phát hiện lỗi hay theo chủ đích của người vận hành.
            </p>
            <div style ="text-align: center">
                <img id="pic_topic4_1" src="img/img4_1.jpg" alt="hinh1_1"/>
            </div>
            <h1 style ="font-size: 1.6rem; margin: 30px auto 10px 20px">5.	Ưu điểm của hệ thống</h1>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px;text-align: justify">
                -	Tích hợp trong một tổng thể máy 3 chức năng cơ bản cần thiết cho dây chuyền, vừa có thể vận hành chung vừa có thể tách ra hoạt động độc lập.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; line-height: 30px; text-align: justify">
                -	Dây chuyền khép kín trong quá trình vận hành nên thời gian tiếp xúc giữa nguyên liệu và môi trường bên ngoài được giảm xuống một cách tối đa; đảm bảo nguyên liệu không bị nhiễm bụi bẩn hay vi khuẩn gây hại. 
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Ngoài ra, tùy theo nhu cầu sản xuất của mỗi cơ sở, dây chuyền này có thể kết hợp với máy hơ màng co, máy phóng dãn và các loại máy khác.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Máy được trang bị thêm một thiết bị cho tình trạng quá tải, có thể bảo vệ máy và điều hành an toàn hơn.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Dây chuyền này có thể chiết được nhiều loại dung tích khác nhau bằng cách cài đặt thời gian cho bơm.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Dây chuyền có khả năng đóng thùng với số lượng sản phẩm khác nhau trong mỗi thùng.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Có những bộ đếm thời gian và sản phẩm để dễ dàng quản lí số lượng nguyên liệu và thành phẩm chính xác nhất.
            </p>
            <h1 style ="font-size: 1.6rem; margin: 0px auto 10px 20px">6.	Tại sao bạn cần mua một hệ thống chiết rót đóng chai</h1>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; line-height: 30px; text-align: justify">-	Hệ thống chiết rót đóng chai là một khoản đầu tư quan trọng đối với bất kỳ công ty đồ uống nào. Là thiết bị cần thiết để đóng chai các sản phẩm có ga và cần chiết rót vào chai nhựa. Hệ thống này sẽ lấy các chai từ băng chuyền và đổ đầy nước giải khát có ga vào chúng. Máy cũng sẽ đảm bảo rằng các chai được đóng kín bằng nắp.</p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; line-height: 30px; text-align: justify">-	Hệ thống này làm cho việc đóng chai hiệu quả hơn, do đó công ty của bạn có thể tiết kiệm thời gian và tiền bạc. Đóng chai là một quá trình khó khăn. Công ty có thể mất rất nhiều thời gian, năng suất làm việc để chiết rót chai thủ công. Trong một số trường hợp, quá trình này thậm chí có thể đắt hơn giá thành của chính sản phẩm chiết rót! Nếu bạn muốn công ty của mình tiết kiệm tiền đóng chai theo thời gian, thì việc đầu tư vào hệ thống chiết rót đóng chai là một ý tưởng tuyệt vời.</p>
        </div>
    </form>
     <footer id ="footer">
        <h2 style="padding-top: 10px">Thông Tin Liên Hệ</h2>
        <ul>
            <li>Địa chỉ: Trường Đại Học Sư Phạm Kỹ Thuật TP.HCM 01 Đ. Võ Văn Ngân, Linh Chiểu, Thủ Đức, Thành phố Hồ Chí Minh</li>
            <li>Hotline: 0977 999 999</li>
            <li>Mail: CMinh@gmai.com</li>
            <li>Zalo: 0866 999 999</li>
        </ul>
        <div class="dk-footer-box-info">
            <div class="footer-social-link">
                <h2>Follow us</h2>
                <ul style="padding-bottom: 10px">
                    <li>
                        <a href="#">
                            <i class="fa fa-facebook"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-google-plus"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-linkedin"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-instagram"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </footer>
</body>
</html>
