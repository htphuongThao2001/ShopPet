using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopPet
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList arrProductt = (ArrayList)Session["giohang"];
            string chuoi = "";
            //Mở thẻ table
            chuoi += "<table>";
            //mở thẻ thead
            chuoi += "<thead>";
            //mở tr
            chuoi += "<tr class='cart-list-item'>";
            //mở các thẻ th
            chuoi += "<th>Sản phẩm</th>";
            chuoi += "<th>Tên sản phẩm</th>";
            
            chuoi += "<th style='width: 120px;'>SL</th>";
            chuoi += "<th>Đơn giá</th>";
            chuoi += "<th>Thành tiền</th>";
            chuoi += "<th>Xóa</th>";
            //dóng tr
            chuoi += "</tr>";
            //đóng thead
            chuoi += "</thead>";
            int i = 0;
            decimal tongtien = 0;
            foreach(CProduct sp in arrProductt)
            {
                i++;
                tongtien += decimal.Parse(sp.price);
                //mở tbody
                chuoi += "<tbody id='mcart'>";
                //mở tr
                chuoi += "<tr class='cart-list-item'>";
                //mở td
                chuoi += "<td class='asp' id='asp' runat='server'> ";
                chuoi += "<img src = '" + sp.image + "'id='img-feature' alt='" + sp.id + " 'width='40%' />";
                chuoi += "</td>";
                chuoi += "<td class='tsp' id ='tsp' runat='server' style='font-size:1.2rem; ' >" + sp.name + "</td>";
                //số lượng
                chuoi += "<td  class='sl' id='sl' runat='server'>";
                chuoi += "<input type='button' class='btn_sl' onclick='giamsoLuong("+i+")' value='-'/>";
                chuoi += "<input type='text' value='1' class='btn_slg' id='index${"+i+"}'/> ";
                chuoi += "<input type='button' class='btn_sl' onclick='tangSL(" + i + ")' value='+' />";
                chuoi += "</td>";
                
                // Đơn giá
                chuoi += "<td>";
                chuoi += "<input class='gia' id ='price${" + i + "}' runat='server' value='" + sp.price + "' readonly/>";
                chuoi += "</td>";
                // Thành tiền = số lượng * giá
                chuoi += "<td >";
                chuoi += "<input type='text' class='thanhtien' id='thanhtien${" + i + "}' runnat='server' value='" + sp.price + "' readonly/>";
                chuoi += "</td>";

                chuoi += "<td>";
                chuoi += "<a href='Xulyxoa.aspx?idxoa=" + sp.id + "'>Xóa</a>";
                chuoi += "</td>";
                chuoi += "</tr>";
                chuoi += "</tbody>";
            }
            chuoi += "<td class='thanhtoan'>";
            chuoi += "<div class='tongtien'>";
            chuoi += "<p>Tổng: </p>";
            chuoi += "<span>"+tongtien+" VNĐ</span>";
            chuoi += "</div>";
            chuoi += "</td>";

            chuoi += "</table>";
            bang.InnerHtml = chuoi;
            slgsp.InnerHtml = "<p style='font-size:10px; font-weight:600'>"+i+"</p>";
            //ArrayList dsach = Application[Global.san_pham] as ArrayList;
            //foreach (CProduct sp in arrProduct)
            //{
            //    asp.InnerHtml = "<img src ='" + sp.image + "'id = 'img-feature' alt = '" + sp.id + "' width='100px'>";
            //    tsp.InnerText = sp.name;
            //    tt.InnerHtml = sp.price;
            //    sl.InnerText = "1";
            //    btnxoa.InnerHtml = "<a href='Xulyxoa.aspx?idxoa="+sp.id + "'  style='font - size:1.4rem; '>Xóa</a>";

            //}
        }
    }
}