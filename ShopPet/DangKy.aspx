<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="ShopPet.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assest/css/dangky.css" rel="stylesheet" />
</head>
<body>
    <div class="main">
        <form id="form1" class="form" runat="server" method="post" onsubmit="return checkdulieu()">
            <div class="dk_title_logo">
                    <p>ĐĂNG KÝ</p>
            </div>
            <div class="spacer"></div>
  

          <div class="form-group">
            <label for="fullnameDK" class="form-label">Tên đầy đủ</label>
            <input id="fullnameDK" name="fullnameDK" type="text" placeholder="VD: Sơn Đặng" class="form-control"/>
            <span class="form-message" id="tenDK_loi">Bắt buộc</span>
          </div>
  
          <div class="form-group">
            <label for="emailDK" class="form-label">Email</label>
            <input id="emailDK" name="emailDK" type="text" placeholder="VD: email@domain.com" class="form-control"/>
            <span class="form-message" id="emailDK_loi">Bắt buộc</span>
        </div>
            <div class="form-group">
            <label for="sdtDK" class="form-label">Số điện thoại: </label>
            <input id="sdtDK" name="sdtDk" type="text" placeholder="VD: Sơn Đặng" class="form-control"/>
            <span class="form-message" id="sdt_loi">Bắt buộc</span>
          </div>
  
          <div class="form-group">
            <label for="passwordDK" class="form-label">Mật khẩu</label>
            <input id="passwordDK" name="passwordDK" type="password" placeholder="Nhập mật khẩu" class="form-control"/>
            <span class="form-message" id="mkDK_loi">Bắt buộc</span>
            <div class="hienmkdn" onclick="hienmk()">
               <input type="checkbox" name="openmk" class="hienmkdn" id="hienmkdn"/><label class="hienmkdn" for="hienmkdn">Hiện mật khẩu</label>
            </div>
        </div>
  
            <input class="form-submit" type="submit" name="dk" id="dk" value="Đăng ký" />

          <%--<button class="form-submit" id="dk">Đăng ký</button>--%>
            <br />
            <br />
            <div>Bạn có tài khoản? <a href="DangNhap.aspx">Đăng nhập</a></div>
        </form>
      </div>
</body>
<%--<script src="assest/javascript/kiemtra.js"></script>--%>
<script src="assest/javascript/checkdl.js"></script>
</html>
