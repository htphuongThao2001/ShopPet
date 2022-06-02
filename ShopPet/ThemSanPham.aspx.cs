using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopPet
{
    public partial class ThemSanPham : System.Web.UI.Page
    {
        public const string san_pham = "sanpham";
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList arrProduct = Application[Global.san_pham] as ArrayList;

            if (IsPostBack)
            {
                if (Request.Form["luu"] == "Thêm sản phẩm")
                {
                    CProduct sp = new CProduct();
                    sp.id = Request.Form["idDK"];
                    sp.type = Request.Form["typeDK"];
                    sp.image = Request.Form["imageDK"];
                    sp.image1 = Request.Form["image1DK"];
                    sp.name = Request.Form["fullnameDK"];
                    sp.price = Request.Form["priceDK"];
                    sp.detail = Request.Form["detailDK"];
                    arrProduct.Add(sp);
                    Application[san_pham] = arrProduct;
                }

            }

        }
        protected void btnthem_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}