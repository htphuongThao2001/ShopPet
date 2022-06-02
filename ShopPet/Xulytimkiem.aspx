<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Xulytimkiem.aspx.cs" Inherits="ShopPet.Xulytimkiem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assest/css/timkiem.css" rel="stylesheet" />
    <link href="assest/font/themify-icons/themify-icons.css" rel="stylesheet" />
</head>
<body>
    <div class="app">
        <!-- top bar trên cùng -->
        <div class="topbar_big">
            <div class="topbar">
                <div class="topbar_left">Cửa hàng bán đồ và phụ kiện cho thú cưng</div>
                <div class="topbar_right">
                    <div class="dangky" id="dangky" runat="server">
                        <%--<a href="DangKi.aspx" >Đăng ký</a>--%>
                    </div>
                    
                    <%--<span>|</span>
                    <a href="DangNhap.aspx" class="dangnhap">Đăng nhập</a>--%>
                    
                </div>
            </div>    
        </div>
        <!-- logo, search và giỏ hàng -->
        <div class="header_big">
            <div class="header">    
               <div class="logo">
                    <img src="./assest/img/logomeo.jpg" alt="" width="70px"/>
                    <span><a href="TrangChu.aspx">PET</a></span>
                    
                </div>
                <form method="get" action="Xulytimkiem.aspx" class="search">
                    <div class="search">
                        <input type="text" name="search" id="search"/>
                        <input type="button"><i class="ti-search"></i> 
                    </div>
                 </form>
                
                <div class="giohang">
                    <a href="GioHang.aspx">
                    <i class="ti-shopping-cart"></i></a>
                    <div class="text-cart">
                        <span class="top_cart">Giỏ hàng</span>
                        <div class="bot_cart">0 sản phẩm</div>
                    </div>
                </div>
                
                
            </div>
        </div>
        <!-- menu nav -->
        <div class="nav">
            <div class="menu">
                <ul class="menu_list">
                    <li><a href="TrangChu.aspx" style="color:#FA8072;">Trang chủ</a></li>
                    <li><a href="TrangCho.aspx">Chó</a></li>
                    <li><a href="">Mèo</a></li>
                    <li><a href="">Giới thiệu</a></li>
                    <li><a href="">Liên hệ</a></li>
                </ul>

            </div>
            
        </div>
        <hr>
        <br>
        <%-- phần nội dung --%>
       <div class="search_nd">
            <p>Nội dung tìm tiếm</p>    
        </div>
        <div class="product-list" runat="server" id="listpro">
        </div>
        <%-- footer --%>
        <div class="footer">
            <div class="footer_left">
                <h3>PET</h3>
                <br>
                <h4>Môn: Lập trình web cơ bản</h4>
                <h4>Đề tài: Website bán đồ và phụ kiện cho thú cưng</h4>
                <h4>Giáo viên hướng dẫn: Lê Hữu Dũng</h4>

            </div>
            <div class="footer_right">
                <h3>Thành viên:</h3>
                <br/>
                <h4>Nguyễn Vân Anh-2010A01</h4>
                <h4>Hoàng Thị Phương Thảo-1910A05</h4>
                <h4>Vũ Đức Thọ-1910A05</h4>
            </div>
        </div>
        </div>
</body>
</html>
