var productId = $("#productId").val();
	
	$.getJSON("/admin/product/getAttaches/" + productId, function(result) {
		var str = '';
		$(result).each(function() {
			var data = this;
			str += makeHtmlcode_read(data);
		});
		
		$(".about_product").append(str);
	});
	//리뷰 버튼을 눌렀을때 
	$("#review").click(function() {
		//스크롤 버튼 활성화
		var scrollPosition = $(".reviews").offset().top;
		$("html").animate({scrollTop: scrollPosition}, 500); 
	});
	//QnA 버튼을 눌렀을때 
	$("#qna").click(function() {
		//스크롤 버튼 활성화
		var scrollPosition = $(".qnas").offset().top;
		$("html").animate({scrollTop: scrollPosition}, 500); 
	});
	//상품 상세 버튼을 눌렀을때
	$("#about").click(function() {
		//스크롤 버튼 활성화
		var scrollPosition = $(".about_product").offset().top;
		$("html").animate({scrollTop: scrollPosition}, 500); 
	});
	
	
	//갯수 선택 버튼을 눌렀을때
	$("#select_count").on('blur', function() {
		var count = $("#select_count").val();
		var price = $("#price").val();
		var opt = $(".opt_select").val();
		var name =$("#product_number").val();
		
		var product_count= $("#select_count").val();
	    $('#count').attr('value', product_count);
		
		var shipping = '무료배송';
		var finalPrice = count*price;
	
		var str = '';
		
		str += '<p><label>수량 : </label><span>&nbsp;' + count + '</span>&nbsp;&nbsp;&nbsp;';	
		str	+= '<label>가격 : </label><span>&nbsp;' + price + ' 원</span></p>';
		str += '<h4><label>결제금액 : </label><span>&nbsp;' + finalPrice + ' 원</span></h4>'; 
		str += '<span class="glyphicon glyphicon-exclamation-remove"></span>';
		
		$(".selected_option").html(str);
	});
	
	$("#submit").click(function(){
		$("cart-form").submit();
		
	});
	
	$("select[name=product_count]").change(function(){
		let stock = $("#product1_stock").val();
		let count = $("select[name=product_count]").val();
		// 셀렉트 박스의 값이 DB에 저장 된 수량보다 클 때 구매 불가하게 처리
		if(Number(stock) < Number(count) ){
			alert('품절인 상품입니다.');
			$(".selected_option").hide();	// 결제 금액란 숨기기
			$("#orderbtn").hide();			// 주문하기 & 장바구니 버튼 숨기기
			$("#submit").hide();
		}
		
		
	});
	
	// 카테고리 리스트에서 품절 상품 클릭 시 발생 이벤트
	$('#soldOutproduct').click(function(){
		alert('품절인 상품입니다.')
	});
	
	// 구매 관련 정보 갱신 및 품절 체크 함수
function updatePurchaseInfo() {
    const count = Number($("#select_count").val() || $("select[name=product_count]").val());
    const price = Number($("#price").val());
    const stock = Number($("#product1_stock").val());
    const finalPrice = count * price;

    // 품절 체크
    if (stock < count) {
        alert('품절인 상품입니다.');
        $(".selected_option").hide();
        $("#orderbtn").hide();
        $("#submit").hide();
        return;
    } else {
        // 품절이 아니면 UI 복구
        $(".selected_option").show();
        $("#orderbtn").show();
        $("#submit").show();
    }

    // 결제 정보 표시
    $('#count').val(count); // hidden input에 수량 반영
    let html = `
        <p>
            <label>수량 : </label><span>&nbsp;${count}</span>&nbsp;&nbsp;&nbsp;
            <label>가격 : </label><span>&nbsp;${price} 원</span>
        </p>
        <h4>
            <label>결제금액 : </label><span>&nbsp;${finalPrice} 원</span>
        </h4>
        <span class="glyphicon glyphicon-exclamation-remove"></span>
    `;
    $(".selected_option").html(html);
}

// 갯수 입력(blur) 및 셀렉트박스 변경 시 함수 호출
$("#select_count").on('blur', updatePurchaseInfo);
$("select[name=product_count]").change(updatePurchaseInfo);