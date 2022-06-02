function checkdulieu() {

    // Không để trống gồm 5 kí tự và ko chứa kí tự đặc biệt
    //chứa chữ thg, chữ hoa và số từ 0 đến 9:/^[a-zA-Z0-9]+$/
    //chứa chữ thg, chữ hoa, số và gồm 3-10 kí tự:/^[a-zA-Z0-9]{3,10}$/
    //dấu cộng nghĩa là lặp lại ít nhaats1 lần
    //cho phép tên có khoảng trắng:
    fullname = document.getElementById("fullnameDK").value;
    ten_loi = document.getElementById("tenDK_loi");
    checkloi = true;
    if (fullname == "") {
        ten_loi.innerHTML = "Vui lòng điền thông tin";
        checkloi = false;
    } else {
        if (fullname = !/^[a-zA-Z\s]{3,10}$/.test(fullname)) {
            ten_loi.innerHTML = "Tên đn gồm 3-10 kí tự và cho phép có khoảng trắng ";
            checkloi = false
        } else {
            ten_loi.innerHTML = "okie";
        }
    }

       

    // Email phải có @, có ít nhất 1 dấu . sau @
    email = document.getElementById("emailDK").value;
    email_loi = document.getElementById("emailDK_loi");
    //if (email == "") {
    //    email_loi.innerHTML = "Vui lòng điền thông tin";
    //    checkloi = false;
    //}
    //else {
    //    if (email.indexOf("@gmail.com") >= 0) {
    //        //email_loi.innerHTML = "ok";
    //    } else {
    //        email_loi.innerHTML = "email không đúng định dạng";
    //        checkloi = false;
    //    }
    //}
    if (email.indexOf("@") > 0 && email.lastIndexOf(".") - email.indexOf("@") > 0) {
        email_loi.innerHTML = "okie";
    }
    else if (email == "") {
        email_loi.innerHTML = "Vui lòng ko để trống";
        checkloi = false;

    }
    else {
        email_loi.innerHTML = "email không đúng định dạng";
        checkloi = false;
    }
    /* Số điện thoại
    * không để trống
    * là số 0-9 : 10 số, bắt đầu bằng 0
    */
    sdt = document.getElementById("sdtDK").value;
    sdt_loi = document.getElementById("sdt_loi");
    if (sdt == "") {
        sdt_loi.innerHTML = "vui lòng điền thông tin";
        checkloi = false;
    }
    else {
        if (sdt = !/((09|03|07|08|05)+([0-9]{8})\b)/.test(sdt)) {
            sdt_loi.innerHTML = "Số đt phải bắt đầu là 09, 03, 07 vân vân ";
            checkloi = false
        } else {
            sdt_loi.innerHTML = "okie";
        }
    }
    //else {
    //    if (sdt = !/^0[^0]\d{8}$/.test(sdt)) {
    //        sdt_loi.innerHTML = "Số 0 ở đầu, số t2 khác 0 và có tất cả 10 ký tự ";
    //        checkloi = false
    //    } else {
    //        sdt_loi.innerHTML = "okie";
    //    }
    //}
    //else {
    //    if (sdt.charAt(0) == "0" && sdt.length == 10) {
    //        sdt_loi.innerHTML = "ok";
    //    } else {
    //        sdt_loi.innerHTML = "Số 0 phải ở đầu và gồm 10 kí tự";
    //        checkloi = false;
    //    }
    //}

    password = document.getElementById("passwordDK").value;
    mk_loi = document.getElementById("mkDK_loi");
    if (password == "") {
        mk_loi.innerHTML = "Vui lòng điền thông tin";
        checkloi = false;
    }
    else {
        if (password = !/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*]).{6,}$/.test(password)) {
            mk_loi.innerHTML = "mật khẩu yếu";
            checkloi = false
        } else {
            mk_loi.innerHTML = "mật khẩu mạnh lắm";
        }
    }
    //else {
    //    if (password = !/^\d{5}$/.test(password)) {
    //        mk_loi.innerHTML = "Mk phải gòm 5 kí tự ";
    //        checkloi = false
    //    } else {
    //        mk_loi.innerHTML = "okie";
    //    }
    //}
    return checkloi;
}
/* Passwword
* không để trống
* Tối thiểu tám ký tự, ít nhất một chữ cái và một số
* --> ^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$
* Tối thiểu tám ký tự, ít nhất một chữ cái, một số và một ký tự đặc biệt
* --> ^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$
* Tối thiểu tám ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường và một số
* --> ^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$
* Tối thiểu tám ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường, một số và một ký tự đặc biệt
* --> ^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$
* Tối thiểu tám và tối đa 10 ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường, một số và một ký tự đặc biệt
* --> ^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$
* password = document.getElementById("passwordDK").value;
   mk_loi = document.getElementById("mkDK_loi");

   //passwordManh = new RegExp("^(?=.{14,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
   const passwordManh = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*]).{8,}$/;
   passwordTB = new RegExp("^(?=.{10,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
   passwordYeu = new RegExp("(?=.{8,}).*", "g");
    */

    //password = document.getElementById("passwordDK").value;
    //mk_loi = document.getElementById("mkDK_loi");
    //if (password == "") {
    //    mk_loi.innerHTML = "Vui lòng điền thông tin";
    //    checkloi = false;
    //}
function hienmk() {
    var mkdk = document.getElementById('passwordDK');
   
    if (document.getElementById('hienmkdn').checked) {
        mkdk.type = 'text';
       

    }
    else {
        mkdk.type = 'password';
        
    }
}
