<%@ Page Language="C#" AutoEventWireup="true" CodeFile="topic_2.aspx.cs" Inherits="topic_2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đề tài - SCADA</title>
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <style>
        body {
            width: 100%;
            height: 100vh;
            background-color: rgb(255, 255, 255);
            background-size: 100%;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <div id="App_SideWrap">
            <div>
                <ul>
                    <li>
                        <a href="main.aspx" id="li_home">Trang Chủ</a>
                    </li>
                    <li>
                        <a id="li_dtb">Dữ Liệu</a>
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
                 <h1 style ="font-size: 2rem; font-family:serif; color: red; text-align: center"> Hệ Thống Sản xuất bánh</h1>
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
                <video width="50%" src="Video/he_thong_lam_banh.mp4" type ="video/mp4" controls></video>
            </div>
            <div style ="margin-bottom: 10px; margin-left: 20px; text-align: justify">
                <h1 style ="font-size: 1.6rem; text-align: justify">1. Hệ thống làm bánh là gì?</h1>
            </div>
            <p  style ="font-size: 1.3rem; margin: 10px 20px auto 20px; line-height: 30px;text-align: justify" >
                -	Hệ thống làm bánh tự động là một loại máy hoặc dây chuyền sản xuất được thiết kế để tự động sản xuất các loại bánh và sản phẩm bánh ngọt khác
            </p>
            <p style ="font-size: 1.3rem; margin: 10px 20px auto 20px; line-height: 30px; text-align: justify">
                -	Nó bao gồm các thiết bị và máy móc được kết hợp với các hệ thống điều khiển và phần mềm để thực hiện các công đoạn sản xuất bánh từ quá trình trộn nguyên liệu cho đến giai đoạn hoàn thiện và đóng gói sản phẩm.
            </p>
            <div style ="text-align: center" >
                <img id="pic_topic1_1" src="img/img1_1.jpg" alt="hinh1_1"/>
            </div>
            <h1 style ="font-size: 1.6rem; margin: 30px auto 10px 20px">2.	Cấu tạo của 1 hệ thống làm bánh.</h1>
            <p style ="font-size: 1.3rem; margin: 10px 20px 30px 20px; text-align: justify">
                -	Hệ thống làm bánh tự động bao gồm nhiều bộ phận khác nhau, mỗi bộ phận có chức năng riêng để thực hiện các công đoạn trong quá trình sản xuất bánh tự động.
            </p>
            <p style ="font-size: 1.3rem; margin: 10px 20px 30px 20px; text-align: justify">
                -	Máy trộn bột: Bộ phận này được sử dụng để trộn các nguyên liệu chính như bột, đường, nước và các thành phần khác để tạo ra bột trộn đồng nhất. Máy trộn bột có thể được điều chỉnh để thay đổi thời gian trộn và tốc độ trộn để đạt được kết quả mong muốn.
            </p>
           <div style ="text-align: center">
                <img id="pic_topic2_1" src="img/ht2_img2_1.jpg" alt="hinh2_1"/>
           </div>
            <p style ="font-size: 1.3rem; margin: 30px 20px 30px 20px; text-align: justify">
                -   Máy nhồi bột: Bộ phận này được sử dụng để nhồi bột sau khi đã trộn để tạo độ đàn hồi và kết cấu cho bánh. Máy nhồi bột thường có các cánh trộn để nhồi bột một cách đồng nhất và hiệu quả.
            </p>
            <div style ="text-align: center">
                <img id="pic_topic2_2" src="img/ht2_img2_2.jpg" alt="hinh2_2"/>
            </div>
            <p style ="font-size: 1.3rem; margin: 30px 20px 10px 20px; text-align: justify">
                -	Máy dập bánh: Bộ phận này dùng để định hình và tạo khuôn cho bánh. Nó thường có các khuôn mẫu hoặc dụng cụ định hình để tạo ra các hình dạng và kích thước khác nhau cho bánh.
            </p>
            <div style ="text-align: center">
                <img id="pic_topic2_3" src="img/ht2_img2_3.jpg" alt="hinh2_3"/>
            </div>
            <p style ="font-size: 1.3rem; margin: 30px 20px 10px 20px; text-align: justify">
                -	Lò nướng: Đây là bộ phận quan trọng để nướng bánh. Lò nướng được điều chỉnh để kiểm soát nhiệt độ và thời gian nướng để đảm bảo bánh nướng chín đều và có màu sắc và vị giữ nguyên.
            </p>
            <div style ="text-align: center">
                <img id="pic_topic2_4" src="img/ht2_img2_4.jpg" alt="hinh2_4"/>
            </div>
            <p style ="font-size: 1.3rem; margin: 30px 20px 10px 20px; text-align: justify">
                -	Máy phun kem: Bộ phận này được sử dụng để phun kem hoặc các thành phần khác lên bánh, tạo nên các hình dạng và trang trí đặc biệt.
            </p>
            <div style ="text-align: center">
                <img id="pic_topic2_5" src="img/ht2_img2_5.jpg" alt="hinh2_5"/>
            </div>
            <p style ="font-size: 1.3rem; margin: 30px 20px 10px 20px; text-align: justify">
                -	Máy đóng gói: Bộ phận này dùng để đóng gói bánh thành phẩm. Nó có thể bao gồm máy đóng gói tự động, máy đóng gói bọc bánh, máy gắn nhãn và máy đóng gói bảo quản.
            </p>
            <div style ="text-align: center">
                <img id="pic_topic2_6" src="img/ht2_img2_6.jpg" alt="hinh2_6"/>
            </div>
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
                -	Tăng năng suất: Hệ thống làm bánh tự động cho phép sản xuất bánh với tốc độ cao hơn so với quá trình làm bánh thủ công. Điều này giúp tăng năng suất sản xuất và đáp ứng nhu cầu thị trường lớn hơn.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; line-height: 30px; text-align: justify">
                -	Tiết kiệm thời gian và lao động: Với tính tự động cao, hệ thống làm bánh tự động giảm đáng kể thời gian và công sức lao động so với việc làm bánh thủ công. Nhân viên chỉ cần giám sát quá trình sản xuất và can thiệp khi cần thiết.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Đảm bảo chất lượng và đồn đạc: Hệ thống làm bánh tự động được điều khiển bằng chương trình và cảm biến, giúp đảm bảo sự nhất quán trong chất lượng sản phẩm. Nó đảm bảo mỗi chiếc bánh được làm với cùng chất lượng, kích thước và hình dạng, giúp tạo dựng thương hiệu và đáp ứng sự yêu cầu của khách hàng.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Tính linh hoạt và đa dạng: Hệ thống làm bánh tự động có thể được tùy chỉnh để sản xuất nhiều loại bánh và sản phẩm bánh ngọt khác nhau. Nó có khả năng thay đổi các thông số như kích thước, hình dạng và thành phần của bánh để đáp ứng sự đa dạng trong nhu cầu thị trường.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Tiết kiệm nguyên liệu: Hệ thống làm bánh tự động được thiết kế để tối ưu hóa việc sử dụng nguyên liệu. Nó có khả năng đo lường và kiểm soát lượng nguyên liệu cần thiết để tạo ra bánh với độ chính xác cao, giúp tiết kiệm nguyên liệu và giảm lãng phí.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                -	Đáng tin cậy và ổn định: Hệ thống làm bánh tự động thường được xây dựng với các công nghệ và vật liệu chất lượng cao, đảm bảo tính ổn định và độ tin cậy trong quá trình hoạt động. Nó giảm thiểu rủi ro hỏng hóc và sự cố sản xuất, giúp duy trì quá trình sản xuất liên tục và hiệu quả.
            </p>
            <p style ="font-size: 1.3rem; margin: 0px 20px 10px 20px; text-align: justify">
                Tổng quát, hệ thống làm bánh tự động cung cấp sự hiệu quả, chất lượng và linh hoạt trong quá trình sản xuất bánh, giúp nâng cao năng suất và đáp ứng nhu cầu thị trường một cách tốt nhất.
            </p>
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
