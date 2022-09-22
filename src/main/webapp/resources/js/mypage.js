
// const autoHyphen = (target) => {
//     target.value = target.value
//         .replace(/[^0-9]/g, '')
//         .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
// }

/* 회원정보 수정 validation */

var mod_password = document.querySelector('#mod_password');
var pwd_mod = document.querySelector('#pwd_mod');
var pwd_mod_check = document.querySelector('#pwd_mod_check');
var phone_mod = document.querySelector('#phone_mod');
var addr_mod = document.querySelector('#addr_mod');

var mod_error = document.querySelectorAll('.mod_error_next_box');

pwd_mod.addEventListener("focusout", modCheckPassword);
pwd_mod_check.addEventListener("focusout", modCheckPassword2);
phone_mod.addEventListener("focusout", modCheckPhone);
addr_mod.addEventListener("focusout", modCheckAddr);

/* 회원정보 수정 */

function modCheckPassword() {
    /* 새 비밀번호 체크 */
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(pwd_mod.value.length==0) {
        mod_error[1].innerHTML = "새 비밀번호를 입력해 주세요";
        mod_error[1].style.color = "red";
        mod_error[1].style.display = "block";
    } else if(!pwPattern.test(pwd_mod.value)) {
        mod_error[1].innerHTML = "비밀번호는 8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        mod_error[1].style.color = "red";
        mod_error[1].style.display = "block";
    } else {
        mod_error[1].innerHTML = "";
        mod_error[1].style.display = "none";
    }
}

function modCheckPassword2() {
    /* 새 비밀번호 확인 체크 */
    if(pwd_mod.value.length==0) {
        mod_error[2].innerHTML = "새 비밀번호를 먼저 입력해 주세요";
        mod_error[2].style.color = "red";
        mod_error[2].style.display = "block";
    } else if(pwd_mod_check.value.length==0) {
        mod_error[2].innerHTML = "새 비밀번호 확인을 입력해 주세요.";
        mod_error[2].style.color = "red";
        mod_error[2].style.display = "block";
    } else if(pwd_mod_check.value != pwd_mod.value) {
        mod_error[2].innerHTML = "새 비밀번호가 일치하지 않습니다.";
        mod_error[2].style.color = "red";
        mod_error[2].style.display = "block";
    } else {
        mod_error[2].innerHTML = "새 비밀번호가 일치합니다."
        mod_error[2].style.color = "#08A600";
        mod_error[2].style.display = "block";
    }
}

function modCheckPhone() {
    /* 새 전화번호 확인 체크 */
    var phonePattern = /^(?:(010-\d{4})|(01[1|6|7|8|9]-\d{3,4}))-(\d{4})$/;
    if(phone_mod.value === "") {
        mod_error[3].innerHTML = "새로운 전화번호를 입력해 주세요.";
        mod_error[3].style.color = "red";
        mod_error[3].style.display = "block";
    } else if(!phonePattern.test(phone_mod.value)) {
        mod_error[3].innerHTML = "새로운 전화번호 형식이 잘못되었습니다.";
        mod_error[3].style.color = "red";
        mod_error[3].style.display = "block";
    } else {
        mod_error[3].innerHTML = "새로운 전화번호가 입력되었습니다."
        mod_error[3].style.color = "#08A600";
        mod_error[3].style.display = "block";
    }
}

function modCheckAddr() {
    /* 새 주소 확인 체크 */
    var namePattern = /[가-힣]/;
    if(addr_mod.value === "") {
        mod_error[4].innerHTML = "새로운 주소를 입력해 주세요.";
        mod_error[4].style.color = "red";
        mod_error[4].style.display = "block";
    } else if(!namePattern.test(addr_mod.value)) {
        mod_error[4].innerHTML = "새로운 주소 형식이 잘못되었습니다.";
        mod_error[4].style.color = "red";
        mod_error[4].style.display = "block";
    } else {
        mod_error[4].innerHTML = "새로운 주소가 입력되었습니다."
        mod_error[4].style.color = "#08A600";
        mod_error[4].style.display = "block";
    }
}

function validateModify() {

    if( pwd_mod.getAttribute('hidden') != null &&
        phone_mod.getAttribute('readonly') != null &&
        addr_mod.getAttribute('readonly') != null ) {

        alert('수정할 내용이 없습니다.');
        return false;
    }

    if( pwd_mod.getAttribute('hidden') == null ) {
        if( (!mod_error[1].innerText == "" && mod_error[1].style.color == "red") || pwd_mod.value == '' ) {
            alert('새 비밀번호는 8~16자 영문 대 소문자, 숫자, 특수문자를 사용해 입력해 주세요.');
            document.getElementById('pwd_mod').focus();
            return false;
        }

        if( (!mod_error[2].innerText == "" && mod_error[2].style.color == "red") || pwd_mod_check.value == '' ) {
            alert('새 비밀번호 확인을 입력하시거나 비밀번호를 확인해 주세요.');
            document.getElementById('pwd_mod_check').focus();
            return false;
        }
    }

    if( phone_mod.getAttribute('readonly') == null ) {
        if( (!mod_error[3].innerText == "" && mod_error[3].style.color == "red") || phone_mod.value == '' ) {
            alert('새 전화번호를 입력하거나 전화번호 양식을 확인해 주세요.');
            document.getElementById('phone_mod').focus();
            return false;
        }
    }

    if( addr_mod.getAttribute('readonly') == null ) {
        if( (!mod_error[4].innerText == "" && mod_error[4].style.color == "red") || addr_mod.value == '' ) {
            alert('새 주소를 입력하거나 주소 양식을 확인해 주세요.');
            document.getElementById('addr_mod').focus();
            return false;
        }
    }
    return true;
}

function mod_pwdChk(){

    let mod_password = $('#mod_password').val();

    if (mod_password == "") {
        mod_error[0].innerHTML = "수정을 위해 현재 비밀번호를 입력해 주세요.";
        mod_error[0].style.color = "red";
        mod_error[0].style.display = "block";

        return false;
    }

    $.ajax({
        type: "POST",
        url: "./mypage/pwdChk",
        data: { "mod_password": mod_password },
        success: function(data) {
            if (data == 0) {
                mod_error[0].innerHTML = "비밀번호가 다릅니다.";
                mod_error[0].style.color = "red";
                mod_error[0].style.display = "block";
                return false;
            } else if(data == 1){
                mod_error[0].innerHTML = "비밀번호가 일치합니다.";
                mod_error[0].style.color = "#08A600";
                mod_error[0].style.display = "block";

                $('#mod_password').attr("readonly", true);
                pwd_mod.removeAttribute("hidden");
                pwd_mod_check.removeAttribute("hidden");
            }
        }
    });
}

function resetMod() {
    $(".user_mod")[0].reset();
    mod_error[0].innerHTML = "";
    mod_error[1].innerHTML = "";
    mod_error[2].innerHTML = "";
    mod_error[3].innerHTML = "";
    mod_error[4].innerHTML = "";
    mod_password.removeAttribute("readonly");
    pwd_mod.setAttribute("hidden", true);
    pwd_mod_check.setAttribute("hidden", true);
    phone_mod.setAttribute("readonly", true);
    addr_mod.setAttribute("readonly", true);
}

function removeRD_phone() {
    phone_mod.removeAttribute("readonly");
}

function removeRD_addr() {
    addr_mod.removeAttribute("readonly");
}
