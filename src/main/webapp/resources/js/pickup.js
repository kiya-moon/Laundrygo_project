function pickupvalid(frm) {
    if ($("#laundryCheck1").is(":checked") != true) {
        alert("세탁 고지 사항에 동의해주세요.")
        return false;
    }
    if ($("input:checkbox[name='laundry']").is(":checked") != true) {
        alert("맡기실 세탁물을 하나이상 선택해주세요.")
        return false;
    }

    alert("수거신청이 완료되었습니다.");

    frm.submit();
}