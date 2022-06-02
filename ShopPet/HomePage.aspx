<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ShopPet.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assest/css/homepage.css" rel="stylesheet" />
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
                    <%--<div id="changpass" runat="server">
                        <a href="TrangDoiMK.aspx">| Đổi mật khẩu</a>
                    </div>--%>
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
                          <div class="bot_cart" id="slgsp" runat="server">0</div>
                        <p>sản phẩm</p>
                    </div>
                </div>
                
                
            </div>
        </div>
        <!-- menu nav -->
        <div class="nav">
            <div class="menu">
                <ul class="menu_list">
                    <li><a href="TrangChu.aspx" style="color:#FA8072;">Trang chủ</a></li>
                    <li><a href="TrangCho.aspx?type=cho">Chó</a></li>
                    <li><a href="TrangMeo.aspx?type=meo">Mèo</a></li>
                    <li><a href="">Giới thiệu</a></li>
                    <li><a href="">Liên hệ</a></li>
                </ul>

            </div>
            
        </div>
        <hr>
        <br>
         <!-- Các item quảng bá và list truyện-->
        <div class="main_content">
            <!-- item -->
            <div class="item">
                <div class="item_1">
                    <div class="icon"><i class="ti-gift"></i></div>
                    <div class="item_infor">Các sản phẩm <br> phong phú</div>
                </div>
                <div class="item_1">
                    <div class="icon"><i class="ti-money"></i></div>
                    <div class="item_infor">Khuyến mại <br> hấp dẫn</div>
                </div>
                <div class="item_1">
                    <div class="icon"><i class="ti-info"></i></div>
                    <div class="item_infor">Thông tin <br>rõ ràng </div>
                </div>
                <div class="item_1">
                    <div class="icon"><i class="ti-truck"></i></div>
                    <div class="item_infor">Vận chuyển <br>nhanh chóng </div>
                </div>
            </div>  
            <!-- list sp -->
            <br>
            <h3 class="banchay">Sản phẩm bán chạy</h3>
            <br>
             <div class="product-list" id="loaisp" runat="server">
                        <%--<div class="grid">
                                <img src="./assest/img/meouongnuoc.jpg" alt="hinhanh" class="product-img">
                                <div class="product-name">Vòi uống nước hình hoa</div>
                                <div class="product-price">500,000VNĐ</div>
                                
                        </div>--%>
                    
                        
                           
                            
                        </div>
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
                <br>
                <h4>Nguyễn Vân Anh-2010A01</h4>
                <h4>Hoàng Thị Phương Thảo-1910A05</h4>
                <h4>Vũ Đức Thọ-1910A05</h4>
            </div>
        </div>

    </div>
        </div>
</body>
</html>
