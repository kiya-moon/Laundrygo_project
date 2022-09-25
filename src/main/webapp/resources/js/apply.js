$(document).ready(function(){
    var price = document.getElementById("price_in").value;
    var point = document.getElementById("point_in").value;
    var zero = 0;
    var a;
    var total = price-point;

    $("#Pointcheck1").click(function (){

        if($(this).prop('checked')){
            $("input[name=m_point]").attr("value",point);
            a = point;
            var b = price - a;
            $("input[name=m_price]").attr("value", b);
        }else {
            $("input[name=m_point]").attr("value", zero);
            a = zero;
            $("input[name=m_price]").attr("value", price);
        }

    });
    /* 체크박스 체크 확인 */
    $("a[href$='#finish']").click(function(){
        if ($("input:checkbox[id='Paycheck1']").is(":checked") != true){
            alert("결제 정보 저장 및 자동결제에 동의해주세요.")
            return false;

        } else if ($("input:checkbox[id='agree1']").is(":checked") != true){
            alert("이용약관에 동의해주세요.")
            return false;

        } else if ($("input:checkbox[id='agree2']").is(":checked") != true){
            alert("개인정보 수집 및 이용에 동의해주세요.")
            return false;

        } else if ($("input:checkbox[id='agree3']").is(":checked") != true){
            alert("아래 서비스 이용사항에 동의해주세요.")
            return false;

        } else {
            alert("결제성공,\n감사합니다. 결제가 완료되었습니다.");
            $("#wizard1").submit()
            // location.href = "/laundrygo/monthly/" + email;
        }
    });
    /* END 체크박스 체크 확인 */

});
