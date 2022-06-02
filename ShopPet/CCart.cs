using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopPet
{
    public class CCart
    {
        public int soluong { get; set; }
        public string idsp { get; set; }
        public string imgsp { get; set; }
        public string namesp { get; set; }
        public string pricesp { get; set; }
        
        public CCart(string idsp, string imgsp, string namesp, string pricesp, int soluong)
        {
            this.idsp = idsp;
            
            this.imgsp = imgsp;
            this.namesp = namesp;
            this.pricesp = pricesp;
            this.soluong = soluong;
        }

        
    }
}