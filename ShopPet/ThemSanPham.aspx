<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="ShopPet.ThemSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assest/css/themsanpham.css" rel="stylesheet" />
</head>
<body>
    <div class="main">
        <form id="form1" class="form" runat="server" method="post" onsubmit="return checkdulieu()">
            <div class="dk_title_logo">
                    <p>THÊM SẢN PHẨM</p>
            </div>
            <div class="spacer"></div>

            <div class="form-group">
            <label for="idDK" class="form-label">ID sản phẩm</label>
            <input id="idDK" name="idDK" type="text"  class="form-control"/>
            <span class="form-message" id="idDK_loi">Bắt buộc</span>
            </div>
            <div class="form-group">
            <label for="typeDK" class="form-label">Loại sản phẩm</label>
            <input id="typeDK" name="typeDK" type="text"  class="form-control"/>
            <span class="form-message" id="typeDK_loi">Bắt buộc</span>
            </div>

          <div class="form-group">
            <label for="fullnameDK" class="form-label">Tên sản phẩm</label>
            <input id="fullnameDK" name="fullnameDK" type="text"  class="form-control"/>
            <span class="form-message" id="tenDK_loi">Bắt buộc</span>
          </div>
  
          <div class="form-group">
            <label for="emailDK" class="form-label">Ảnh sản phẩm</label>
            <input id="imageDK" name="imageDK" type="file" placeholder="Chọn tệp" class="form-control"/>
            <span class="form-message" id="imageDK_loi">Bắt buộc</span>
        </div>
            <div class="form-group">
            <label for="sdtDK" class="form-label">Ảnh chi tiết</label>
            <input id="image1DK" name="image1Dk" type="file" placeholder="Chọn tệp" class="form-control"/>
            <span class="form-message" id="image1DK_loi">Bắt buộc</span>
          </div>
  
          <div class="form-group">
            <label for="priceDK" class="form-label">Giá</label>
            <input id="priceDK" name="priceDK" type="text" placeholder="100000" class="form-control"/>
            <span class="form-message" id="priceDK_loi">Bắt buộc</span>
        </div>
             <div class="form-group">
            <label for="detailDK" class="form-label">Chi tiết</label>
            <input id="detailDK" name="detailDK" type="text"  class="form-control" style="height:50px;"/>
            <span class="form-message" id="detailDK_loi">Bắt buộc</span>
        </div>
  
            <input class="form-submit" type="submit" name="luu" id="luu" value="Thêm sản phẩm" runat="server" onserverclick="btnthem_Click" />

          <%--<button class="form-submit" id="dk">Đăng ký</button>--%>
            
        </form>
      </div>
    <script src="assest/javascript/checksanpham.js"></script>
</body>
</html>
