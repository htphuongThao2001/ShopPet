using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopPet
{
    public partial class ThongkeUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fullnameDK = Request.Form["fullnameDK"];
            List<CUser> listuser = (List<CUser>)Application["user"];
            string chuoi = "";
            chuoi += "<table border='1'>";
            chuoi += "<tr>";
            chuoi += "<th>STT</th>";
            chuoi += "<th>Name</th>";
            chuoi += "<th>Email</th>";
            chuoi += "<th>Password</th>";
            chuoi += "</tr>";
            int i = 1;
            foreach (CUser nv in listuser)
            {
                chuoi += "<tr>";
                chuoi += "<td>" + (i++) + "</td>";
                chuoi += "<td>" + nv.name + "</td>";
                chuoi += "<td>" + nv.email + "</td>";
                chuoi += "<td>" + nv.password + "</td>";
                
                chuoi += "</tr>";
            }
            chuoi += "</table>";
            bang.InnerHtml = chuoi;
        }
    }
}