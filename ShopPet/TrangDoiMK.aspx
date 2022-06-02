<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangDoiMK.aspx.cs" Inherits="ShopPet.TrangDoiMK" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assest/css/doimk.css" rel="stylesheet" />
</head>
<body>
    <div class="main">
        <form method="POST" class="form" id="form1" runat="server">
            <div class="dk_title_logo">
                    <p>ĐỔI MẬT KHẨU</p>
            </div>
            <div class="spacer"></div>
  
          <div class="form-group">
            <label for="password" class="form-label">Mật khẩu cũ</label>
            <input id="passold" name="passolđ" type="password" placeholder="Nhập mật khẩu cũ" class="form-control" runat="server"/>
            <%--<span class="form-message" id="email_loi">Bắt buộc</span>--%>
        </div>
  
          <div class="form-group">
            <label for="password" class="form-label">Mật khẩu mới</label>
            <input id="passnew" name="passnew" type="password" placeholder="Nhập mật khẩu mới" class="form-control" runat="server"/>
            <%--<span class="form-message" id="password_loi">Bắt buộc</span>--%>
        </div>
            <div class="form-group">
            <label for="password" class="form-label">Mật khẩu mới</label>
            <input id="repassnew" name="repassnew" type="password" placeholder="Nhập lại mật khẩu mới" class="form-control" runat="server"/>
            <%--<span class="form-message" id="password_loi">Bắt buộc</span>--%>
        </div>
  
          <input class="form-submit" name="doimk" type="submit" value="Đổi mật khẩu"/>
            <br />
            <br />
            <div>Bạn chưa có tài khoản? <a href="DangKy.aspx">Đăng ký</a></div>
        </form>
      </div>

    
</body>
</html>
