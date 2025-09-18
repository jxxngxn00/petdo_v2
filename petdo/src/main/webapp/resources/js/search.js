$(function() {
	//상품 검색 jQuery
	$('#searchBtn').click(function(){
			
	//검색 input의 값을 저장함
	let keyword = $('#searchFrm input[name="keyword"]').val();
			
	//null값이거나 빈칸일 경우 알림창 띄움, 값이 있을 경우에만 검색
	if(keyword==null || keyword==' '){
			alert('검색어를 입력해주세요.');
		} else {
			$('#searchFrm').attr('action','searchItems.do?keyword='+keyword);
			$('#searchFrm').submit();	
		}//end of if
	})//end of click
});