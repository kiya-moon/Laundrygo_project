
function sendCs() {
    let kindCs = document.getElementById('cs_type').value;
    let frm = document.csForm;

    if(kindCs == ""){
        alert('문의유형을 선택해주세요.');
        return false;
    }

    if($('textarea[name=csText]').val() == ""){
        alert('문의내용을 입력해주세요.');

        return false;
    }

    frm.submit();
}