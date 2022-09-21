
var chk_dupli = 0;

/* 로그인창 닫기 버튼 클릭 trigger */
function hideLogin() {
    $("#login_close").trigger("click");
}

/* 로그인, 회원가입 validation */

var login_email = document.querySelector('#login_email');
var login_password = document.querySelector('#login_password');

var sign_email = document.querySelector('#sign_email');
var sign_name = document.querySelector('#sign_name');
var sign_password = document.querySelector('#sign_password');
var sign_password_check = document.querySelector('#sign_password_check');
var sign_phone = document.querySelector('#sign_phone');
var sign_addr = document.querySelector('#sign_addr');
var sign_account = document.querySelector('#sign_account');
var sign_account_num = document.querySelector('#sign_account_num');

var error = document.querySelectorAll('.error_next_box');

login_email.addEventListener("focusout", loginCheckEmail);
login_password.addEventListener("focusout", loginCheckPassword);

sign_email.addEventListener("focusout", signCheckEmail);
sign_name.addEventListener("focusout", signCheckName);
sign_password.addEventListener("focusout", signCheckPassword);
sign_password_check.addEventListener("focusout", signCheckPassword2);
sign_phone.addEventListener("focusout", signCheckPhone);
sign_addr.addEventListener("focusout", signCheckAddr);

// sign_account.addEventListener("focusout", signCheckAccount);
// sign_account_num.addEventListener("focusout", signCheckAccountNum);


/* 로그인 */

function loginCheckEmail() {
    if(login_email.value.length==0) {
        error[0].innerHTML = "이메일을 입력해주세요";
        error[0].style.display = "block";
    } else {
        error[0].innerHTML = "";
        error[0].style.display = "none";
    }
}

function loginCheckPassword() {
    if(login_password.value.length==0) {
        error[1].innerHTML = "비밀번호를 입력해주세요";
        error[1].style.display = "block";
    } else {
        error[1].innerHTML = "";
        error[1].style.display = "none";
    }
}

/* 회원가입 */

function signCheckName() {
    /* 이름 체크 */
    var namePattern = /[가-힣]/;
    if(sign_name.value.length == 0) {
        error[3].innerHTML = "이름을 입력해 주세요";
        error[3].style.color = "red";
        error[3].style.display = "block";
    } else if(!namePattern.test(sign_name.value)) {
        error[3].innerHTML = "이름은 한글로만 입력해 주세요.";
        error[3].style.color = "red";
        error[3].style.display = "block";
    } else {
        error[3].innerHTML = "허용되는 이름입니다.";
        error[3].style.color = "#08A600";
        error[3].style.display = "block";
    }
}

function signCheckEmail() {
    /* 이메일 체크 */
    var idPattern = /^[\w]+@[\w]+.[\.\w]{2,5}$/;
    if(sign_email.value.length==0) {
        error[2].innerHTML = "이메일을 입력해 주세요";
        error[2].style.color = "red";
        error[2].style.display = "block";
    } else if(!idPattern.test(sign_email.value)) {
        error[2].innerHTML = "이메일 양식이 맞지 않습니다.";
        error[2].style.color = "red";
        error[2].style.display = "block";
    } else {
        error[2].innerHTML = "이메일 양식이 맞습니다.";
        error[2].style.color = "#08A600";
        error[2].style.display = "block";
    }
}

function signCheckPassword() {
    /* 비밀번호 체크 */
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(sign_password.value.length==0) {
        error[4].innerHTML = "비밀번호를 입력해 주세요";
        error[4].style.color = "red";
        error[4].style.display = "block";
    } else if(!pwPattern.test(sign_password.value)) {
        error[4].innerHTML = "비밀번호는 8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        error[4].style.color = "red";
        error[4].style.display = "block";
    } else {
        error[4].innerHTML = "";
        error[4].style.display = "none";
    }
}

function signCheckPassword2() {
    /* 비밀번호 확인 체크 */
    if(sign_password.value.length==0) {
        error[5].innerHTML = "비밀번호를 먼저 입력해 주세요";
        error[5].style.color = "red";
        error[5].style.display = "block";
    } else if(sign_password_check.value.length==0) {
        error[5].innerHTML = "비밀번호 확인을 입력해 주세요.";
        error[5].style.color = "red";
        error[5].style.display = "block";
    } else if(sign_password_check.value != sign_password.value) {
        error[5].innerHTML = "비밀번호가 일치하지 않습니다.";
        error[5].style.color = "red";
        error[5].style.display = "block";
    } else {
        error[5].innerHTML = "비밀번호가 일치합니다."
        error[5].style.color = "#08A600";
        error[5].style.display = "block";
    }
}

function signCheckPhone() {
    /* 전화번호 확인 체크 */
    var phonePattern = /^(?:(010-\d{4})|(01[1|6|7|8|9]-\d{3,4}))-(\d{4})$/;
    if(sign_phone.value === "") {
        error[6].innerHTML = "전화번호를 입력해 주세요.";
        error[6].style.color = "red";
        error[6].style.display = "block";
    } else if(!phonePattern.test(sign_phone.value)) {
        error[6].innerHTML = "전화번호 형식이 잘못되었습니다.";
        error[6].style.color = "red";
        error[6].style.display = "block";
    } else {
        error[6].innerHTML = "전화번호가 입력되었습니다."
        error[6].style.color = "#08A600";
        error[6].style.display = "block";
    }
}

function signCheckAddr() {
    /* 주소 확인 체크 */
    var namePattern = /[가-힣]/;
    if(sign_addr.value === "") {
        error[7].innerHTML = "주소를 입력해 주세요.";
        error[7].style.color = "red";
        error[7].style.display = "block";
    } else if(!namePattern.test(sign_addr.value)) {
        error[7].innerHTML = "주소 형식이 잘못되었습니다.";
        error[7].style.color = "red";
        error[7].style.display = "block";
    } else {
        error[7].innerHTML = "주소가 입력되었습니다."
        error[7].style.color = "#08A600";
        error[7].style.display = "block";
    }
}

// function signCheckAccount() {
//     /* 카드 종류 확인 체크 */
//     if(sign_account.value === "") {
//         error[8].innerHTML = "카드 종류를 선택해 주세요.";
//         error[8].style.color = "red";
//         error[8].style.display = "block";
//     } else if(sign_account.value === "그 외") {
//         error[8].innerHTML = "카드 번호 앞에 카드 종류를 기재해 주세요.";
//         error[8].style.color = "orange";
//         error[8].style.display = "block";
//     } else if((!sign_account.value == "" || sign_account.value == "그 외") && !sign_account_num.value == '') {
//         error[8].innerHTML = "카드번호를 반드시 확인해 주세요."
//         error[8].style.color = "#08A600";
//         error[8].style.display = "block";
//     } else {
//         error[8].innerHTML = "카드가 선택되었습니다."
//         error[8].style.color = "#08A600";
//         error[8].style.display = "block";
//     }
// }

// function signCheckAccountNum() {
//     /* 카드번호 확인 체크 */
//     var accountPattern = /^(\d{4})-(\d{4})-(\d{4})-(\d{4})$/;
//     if(sign_account.value === "") {
//         error[8].innerHTML = "카드 종류를 선택해 주세요.";
//         error[8].style.color = "red";
//         error[8].style.display = "block";
//     } else if(sign_account_num.value === "") {
//         error[8].innerHTML = "카드번호를 입력해 주세요.";
//         error[8].style.color = "red";
//         error[8].style.display = "block";
//     } else {
//         error[8].innerHTML = "카드번호를 반드시 확인해 주세요."
//         error[8].style.color = "#08A600";
//         error[8].style.display = "block";
//     }
// }


/* 모달창 닫을때 입력값 초기화 실패,, */
//     	$('#login').on('hidden.bs.modal', function(e) {
// 			document.forms['login'].reset();
// 		})

// 		$('#user').on('hidden.bs.modal', function(e) {
// 			document.forms['signUp'].reset();
// 		})

function resetLogin() {
    $(".login")[0].reset();
    error[0].innerHTML = "";
    error[1].innerHTML = "";
}

function resetSignUp() {
    $(".signUp")[0].reset();
    error[2].innerHTML = "";
    error[3].innerHTML = "";
    error[4].innerHTML = "";
    error[5].innerHTML = "";
    error[6].innerHTML = "";
}

function validateLogin() {
    if( !error[0].innerText == "" || login_email.value == '' ) {
        alert('이메일을 반드시 입력해 주세요.');
        document.getElementById('login_email').focus();
        return false;
    }

    if( !error[1].innerText == "" || login_password.value == '' ) {
        alert('비밀번호를 반드시 입력해 주세요.');
        document.getElementById('login_password').focus();
        return false;
    }

    return true;

}

function validateSignUp() {
    if(chk_dupli = 0){
        return false;
    }

    if( (!error[3].innerText == "" && error[3].style.color == 'red') || sign_name.value == '' ) {
        alert('이름을 입력하시거나 한글로만 입력해 주세요.');
        document.getElementById('sign_name').focus();
        return false;
    }

    if( (!error[2].innerText == "" && error[2].style.color == 'red') || sign_email.value == ''){
        alert('이메일을 입력하시거나 이메일 양식을 확인해 주세요.');
        document.getElementById('sign_email').focus();
        return false;
    }else if(chk_dupli = 0){
        alert('중복체크를 해주세요.');
        return false;

    }

    if( (!error[4].innerText == "" && error[4].style.color == "red") || sign_password.value == '' ) {
        alert('비밀번호는 8~16자 영문 대 소문자, 숫자, 특수문자를 사용해 입력해 주세요.');
        document.getElementById('sign_password').focus();
        return false;
    }

    if( (!error[5].innerText == "" && error[5].style.color == "red") || sign_password_check.value == '' ) {
        alert('비밀번호 확인을 입력하시거나 비밀번호를 확인해 주세요.');
        document.getElementById('sign_password_check').focus();
        return false;
    }

    if( (!error[6].innerText == "" && error[6].style.color == "red") || sign_phone.value == '' ) {
        alert('전화번호를 입력하거나 전화번호 양식을 확인해 주세요.');
        document.getElementById('sign_phone').focus();
        return false;
    }

    if( (!error[7].innerText == "" && error[7].style.color == "red") || sign_addr.value == '' ) {
        alert('주소를 입력하거나 주소 양식을 확인해 주세요.');
        document.getElementById('sign_phone').focus();
        return false;
    }

    if( (!error[8].innerText == "" && error[8].style.color == "red") ) {
        alert('카드종류 또는 카드번호를 선택해 주세요.');
        document.getElementById('sign_account').focus();
        return false;
    }

    return true;

}
    function dupliChk(){
        const email = $('#sign_email').val();
        $.ajax({
            type: "GET",
            url: "./dupliChk",
            data: { "email": email },
            success: function(data) {
                if (data == 1) {
                    error[2].innerHTML = "중복된 이메일입니다.";
                    error[2].style.color = "red";
                    error[2].style.display = "block";
                    chk_dupli = 0;
                    return false;
                } else if(data == 0){
                    error[2].innerHTML = "사용가능한 이메일입니다.";
                    error[2].style.color = "#08A600";
                    error[2].style.display = "block";
                    chk_dupli = 1;
                }
            }
        });

    }

