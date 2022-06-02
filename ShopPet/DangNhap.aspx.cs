using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopPet
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string user = Request.Form["email"];
                string pass = Request.Form["password"];
                List<CUser> list = (List<CUser>)Application["user"];

                foreach (CUser a in list)
                {
                    if (user == a.email && pass == a.password)
                    {
                        Session["datetime"] = DateTime.Now;
                        Session["dangnhap"] = 1;
                        Session["email"] = a.email;
                        Session["password"] = a.password;
                        Response.Redirect("TrangChu.aspx");
                    }
                    else if(user==a.email && pass!=a.password)
                    {
                        if (Session["dem"] == null)
                        {
                            Session["dem"] = 1;
                        }
                        else
                        {
                            Session["dem"] = (int)Session["dem"] + 1;
                        }
                        if ((int)Session["dem"] >= 3)
                        {
                            dn.Visible = false;
                            Session["dem"] = null;
                            thongbao.InnerText = "Bạn đã nhập sai 3 lần và bị khóa";
                        }
                        else
                        {
                            thongbao.InnerHtml = "Bạn đã đn sai lần thứ: " + Session["dem"];
                        }
                    }
                }
            }
        }
    }
}