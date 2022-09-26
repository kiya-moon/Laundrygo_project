
let search_txt = null;
let search_list = document.getElementsByTagName('h5');
let search_list_cnt = document.getElementsByTagName('h5').length;

function search_qna() {
    search_txt = $('#search_txt').val();

    for( let i = 0; i < search_list_cnt; i++ ) {
        if( search_list[i].innerText.indexOf(search_txt) == -1 ) {
            search_list[i].parentElement.style.display = "none";
        } else {
            search_list[i].parentElement.style.display = "block";
        }
    }
}