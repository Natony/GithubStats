<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dang Nhap</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <style>
        body{
            width:100%;
            height:100vh;
        }
    </style>
</head>
<body style="background-image:url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWN_miVWpJ3OMhBYB6K4Dwz0M8JLa0MOGKDw&usqp=CAU); background-size: 100%; background-repeat: no-repeat">
    <form id="form1" runat="server">
         <div class="img"> 
            <img class="img_resize" src="img/logo_truong.png" />
        </div>
        <div class="wraper">
            <asp:Literal ID="Literal3" runat="server"></asp:Literal>
            <div class="Login">
                <div class="Login__header">
                    <h2 class="Login_header">Đăng Nhập</h2>
                </div>
                <div>
                    <div class="Login-form">
                        <i class="fa fa-user"></i>    
                        <asp:TextBox ID="txt_TK" runat="server" placeholder=" Nhập tên tài khoản" type="text"></asp:TextBox>
                    </div>
                    <div class="Login-form">
                        <i class="fa fa-key"></i>
                        <asp:TextBox ID="txt_MK" runat="server" placeholder=" Nhập mật khẩu" type="password"></asp:TextBox>
                    </div>
                </div>
                <div class="Login__button">
                    <asp:Button ID="Btn_dangnhap" runat="server" Text="Đăng Nhập" OnClick="Btn_dangnhap_Click" />
                </div>
            </div>
        </div>
    </form>
     <footer id="footer">
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
