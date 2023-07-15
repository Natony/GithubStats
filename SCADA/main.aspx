<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="_main" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ - SCADA</title>
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <style>
        body{
            width:100%;
            height:100vh;
        }
    </style>
</head>
<body style="background-color: rgba(235, 247, 242,0.8)">
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
            <h1 style ="text-align: center; font-size: 2.3rem; margin: 25px auto 10px auto; font-family:serif; color: red"> WEBSITE GIÁM SÁT HỆ THỐNG</h1>
            <h2  style ="margin-left: 400px"> GVHD: TS.NGUYỄN VĂN THÁI</h2>
            <h2  style ="margin-left: 400px; margin-top: 10px">NHÓM THỰC HIỆN:</h2>
            <div style="display: inline-flex; font-size: 1.6rem">
                <p style ="margin-left: 470px; margin-top: 10px; min-width: 220px"> 1. Vũ Công Dương</p>
                <p style ="margin-left: 60px; margin-top: 10px"> MSSV: 20151453</p>
            </div>
            <div style="display: inline-flex; font-size: 1.6rem">
                <p style ="margin-left: 470px; margin-top: 10px; min-width: 220px"> 2. Đào Bảo Tín</p>
                <p style ="margin-left: 60px; margin-top: 10px"> MSSV: 20151230</p>
            </div>
             <div style="display: inline-flex; font-size: 1.6rem">
                <p style ="margin-left: 470px; margin-top: 10px; min-width: 220px"> 3. Bạch Công Minh</p>
                <p style ="margin-left: 60px; margin-top: 10px"> MSSV: 20151122</p>
            </div>
             <div style="display: inline-flex; font-size: 1.6rem">
                <p style ="margin-left: 470px; margin-top: 10px; min-width: 220px"> 4. Nguyễn Công Minh</p>
                <p style ="margin-left: 60px; margin-top: 10px"> MSSV: 20151224</p>
            </div>
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
