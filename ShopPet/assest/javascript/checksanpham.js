function checkdulieu(){
    //id

    id = document.getElementById("idDK").value;
    id_loi = document.getElementById("idDK_loi");
    if (id == "") {
        id_loi.innerHTML = "Vui lòng điền thông tin";
        checkloi = false;
    }
    else {

        id_loi.innerHTML = "okie";
    }
   
    fullname = document.getElementById("fullnameDK").value;
    ten_loi = document.getElementById("tenDK_loi");
    checkloi = true;
    if (fullname == "") {
        ten_loi.innerHTML = "Vui lòng điền thông tin";
        checkloi = false;
    } else {
        if (fullname = !/^[a-zA-Z\s]{3,10}$/.test(fullname)) {
            ten_loi.innerHTML = "Tên  gồm 3-10 kí tự và cho phép có khoảng trắng ";
            checkloi = false
        } else {
            ten_loi.innerHTML = "okie";
        }
    }
    



    
   
    //giá
    price = document.getElementById("priceDK").value;
    price_loi = document.getElementById("priceDK_loi");
    if (price == "") {
        price_loi.innerHTML = "vui lòng điền thông tin";
        checkloi = false;
    }
    
    else{
        if (price >0 ) {
            price_loi.innerHTML = "okie";
            
        } else {
            price_loi.innerHTML = "giá sai r";
            checkloi = false
        }
    }
    
  
   //chi tiết

    detail = document.getElementById("detailDK").value;
    detail_loi = document.getElementById("detailDK_loi");
    if (detail == "") {
        detail_loi.innerHTML = "Vui lòng điền thông tin";
        checkloi = false;
    }
    else {
       
            detail_loi.innerHTML = "okie";
        }
    
    return checkloi;
}


   
