using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopPet
{
    public partial class ChiTiet : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            int i = 0;
            ArrayList arrProductt = (ArrayList)Session["giohang"];
            foreach (CProduct sp in arrProductt)
            {
                i++;
            }
            slgsp.InnerHtml = "<p style='font-size:10px; font-weight:600'>" + i + "</p>";
            string request = Request.QueryString["pi"];
            ArrayList arrProduct = Application[Global.san_pham] as ArrayList;

            foreach ( CProduct sp in arrProduct)
            {
                if (sp.id == request)
                {
                    productimage.InnerHtml = "<img src='" + sp.image + "'id ='img-feature' alt='" + sp.id + "'>";
                    anh1.InnerHtml= "<img src='" + sp.image + "'class='img-product' alt='" + sp.id + "'style='height: 100px; width:100px'>";
                    anh2.InnerHtml = "<img src='" + sp.image1 + "'class='img-product' alt='" + sp.id + "' style='height: 100px; width:100px'>";

                    productname.InnerText = sp.name;
                    productprice.InnerText = sp.price;
                    mota.InnerHtml = sp.detail;
                    //addcart.InnerHtml= "<button id='addtocart' class='addtocart' runat='server'>Thêm vào giỏ hàng</button>";


                }

            }
            
            

        }
        //protected void btnthem_Click(object sender, EventArgs e)
        //{
        //    string request = Request.QueryString["id"];
        //    ArrayList arrProduct = (ArrayList)Session["giohang"];
        //    ArrayList arr = Application[Global.san_pham] as ArrayList;
        //    if (arrProduct == null)
        //    {
        //        arrProduct = new ArrayList();
        //    }
        //    foreach (CProduct sp in arrProduct)
        //    {
        //        if (sp.id == request)
        //        {
        //            arrProduct.Add(sp);
        //            break;

        //        }
        //    }
        //    Session["giohang"] = arrProduct;
        //    Response.Redirect(Request.Url.ToString(), true);
        //}
        protected void btnthem_Click(object sender, EventArgs e)
        {
            string request = Request.QueryString["pi"];
            ArrayList arrProductt = (ArrayList)Session["giohang"];
            ArrayList dsach = Application[Global.san_pham] as ArrayList;
            if (arrProductt==null)
            {
                arrProductt = new ArrayList();
            }
            foreach (CProduct p in dsach)
            {
                if (p.id == request)
                {
                    arrProductt.Add(p);
                    break;

                }
            }
            Session["giohang"] = arrProductt;
            Response.Redirect(Request.Url.ToString(), true);
        }

    }
}
