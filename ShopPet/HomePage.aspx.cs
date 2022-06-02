using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopPet
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList arr = Application[Global.san_pham] as ArrayList;
            string c = "";
            foreach (CProduct sp in arr)
            {

                c += "<div class='grid'>";
                c += "<a href='Chitiet.aspx?pi=" + sp.id + "'style='text-decoration: none;'>";
                c += "<div class='product-img'>";
                c += "<img src='" + sp.image + "' alt=''>";
                c += "</div>";
                c += "<div class='product-name'>" + sp.name + "</div>";
                c += "</a>";
                c += "<div class='product-price'>" + sp.price + "</div>";
                c += "</div>";
            }
            loaisp.InnerHtml = c;
        }
    }
}