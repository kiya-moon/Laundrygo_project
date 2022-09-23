$(document).ready(function(){
    /* 결제페이지 포인트 사용여부 */
    var price = document.getElementById("price_in").value;
    var point = document.getElementById("point_in").value;
    var zero = 0;
    var a;
    var total = price-point;

    // $("#changePoint").html(point+" P");
    $("#Pointcheck1").on("click",function (){
        if($(this).prop('checked')){
            $("#changePoint").html(point+" P");
            a = point;
            var b = price - a;
            $("#pay_total").html(b+" 원");
        }else {
            $("#changePoint").html(zero+" P");
            a = zero;
            $("#pay_total").html(price+" 원");
        }

    });

    /* END 결제페이지 포인트 사용여부 */


    $('#wizard1').steps({
        headerTag: 'h3',
        bodyTag: '.wizard-content',
        autoFocus: false,
        enableAllSteps: true,
        titleTemplate: '<span class="number">#index#</span><span class="title">#title#</span>',

    });

    $('.wizard').find(".actions ul > li > a").addClass("btn");

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
            INSPIRO.elements.notification("결제성공",
                "감사합니다. 결제가 완료되었습니다.", "success");
            $("#wizard1").submit()
            // location.href = "/laundrygo/monthly/" + email;
        }
    });

    /* END 체크박스 체크 확인 */

});