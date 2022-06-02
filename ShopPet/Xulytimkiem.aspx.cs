using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopPet
{
    public partial class Xulytimkiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["search"] != "")
            {
                string keySearch = Request.QueryString["search"];
                var html = "";
                ArrayList arr = Application[Global.san_pham] as ArrayList;
                foreach (CProduct sp in arr)
                {
                    if (sp.name.ToLower().Contains(keySearch.ToLower()))
                    {
                        html += "<div class='grid'>";
                        html += "<a href='Chitiet.aspx?pi=" + sp.id + "'style='text-decoration: none;'>";
                        html += "<div class='product-img'>";
                        html += "<img src='" + sp.image + "' alt=''>";
                        html += "</div>";
                        html += "<div class='product-name'>" + sp.name + "</div>";
                        html += "</a>";
                        html += "<div class='product-price'>" + sp.price + "</div>";
                        html += "</div>";
                    }
                }
                listpro.InnerHtml = html;
            }
        }
    }
}