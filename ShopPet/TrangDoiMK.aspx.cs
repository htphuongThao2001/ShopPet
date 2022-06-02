using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopPet
{
    public partial class TrangDoiMK : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<CUser> danhsach;
            danhsach = (List<CUser>)Application["user"];
            string email = Request.Form["email"];
            string hoten = Request.Form["hoten"];
            string passold = Request.Form["password"];
            string passnew = Request.Form["passnew"];
            string session = Convert.ToString(Session["email"]);
            if (Request.Form["doimk"] == "Đổi mật khẩu")
            {
                foreach (CUser us in danhsach)
                {
                    if (Convert.ToString(Session["email"]) == us.email)
                    {
                        us.password = passnew;
                        Response.Redirect("TrangChu.aspx");
                    }
                }
            }

        }
    }
}