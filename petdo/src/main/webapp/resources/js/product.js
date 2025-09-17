const countIsSelected = function() {
	console.log($('#select_count').val());
}

$(function(){
    $('#select_count').on('change', countIsSelected);
})//end of function