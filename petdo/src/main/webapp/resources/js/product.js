/*	$.getJSON("/admin/product/getAttaches/" + productId, function(result) {
		var str = '';
		$(result).each(function() {
			var data = this;
			str += makeHtmlcode_read(data);
		});
		
		$(".about_product").append(str);
	});*/
	
//리뷰 sub GNB 눌렀을때 
$("#review").click(function() {
	//스크롤 버튼 활성화
	var scrollPosition = $(".reviews").offset().top;
	$("html").animate({scrollTop: scrollPosition}, 500); 
});

//상품 상세 sub GNB 눌렀을때
$("#about").click(function() {
	//스크롤 버튼 활성화
	var scrollPosition = $(".about_product").offset().top;
	$("html").animate({scrollTop: scrollPosition}, 500); 
});
	
// 구매 관련 정보 갱신 및 품절 체크
function updatePurchaseInfo() {
    // 선택한 수량, 가격, 재고 가져오기
    const quantity = Number($("#select_count").val() || $("select[name=product_count]").val());
    const price = Number($("#price").val());
    const stock = Number($("#product_stock").val());

	// 전체 수량 체크	
	let total_quantity = 0;
	$(".selected_option .selected_info").each(function() {
	    const selected_quantity = Number($(this).find(".count").text());
	    if (!isNaN(selected_quantity)) {
	        total_quantity += selected_quantity;
	    }
	});	
	console.log(`total_quantity :: ${total_quantity}`);
	total_quantity += quantity; // 새로 선택한 수량 추가
    console.log(`새로 선택한 수량 추가 후 total_quantity :: ${total_quantity}`);
    
    // 재고 체크
	if (total_quantity > stock) {
	    alert("재고 이상 구매할 수 없습니다.");
		$('#select_count').val(0);
	    return;
	} else {
		// 결제 정보 표시
		$(".selected_option").prepend(`
			<div class="selected_content">
		        <span class="selected_info">
		            <label>수량 : </label><span class="count">${quantity}</span>
		            <label>가격 : </label><span class="price">${quantity * price}</span>
		        </span>
				<span class="delete_option">
					<button type="button" class="btn btn-warning delete_option_btn"><i class="fa fa-trash" aria-hidden="true"></i></button>
				</span>
			</div>
		`);
		// hidden input에 수량 반영
		$('#count').val(total_quantity);
	}

    displayTotalPrice();
	$('#select_count').val(0);
}

// 전체 결제 금액 표시
function displayTotalPrice() {
    // 기존 가격과 수량을 모두 합산
    let total = 0;
    $(".selected_option .selected_info").each(function() {
        const price = Number($(this).find(".price").text());
        if (!isNaN(price)) {
            total += price;
        }
    });
	
	if (total > 0) {
		$(".selected_option").show();
		$(".orderbtn").show();
		$("#submit").show();
	    $(".total_price").html(`
	        <h4>
	            <label>결제금액 : </label><span>${total} 원</span>
	        </h4>
	    `);
	} else {
		$(".selected_option").hide();
	    $(".orderbtn").hide();
	    $("#submit").hide();
	}
}

function deleteOption(el) {
    $(el).closest(".selected_content").remove();
    displayTotalPrice();
}

function editReview(el){

	const content = $.trim($(el).parents("div.panel-body").find(".review-content").text()); 	//p 태그의 값 저장
	$(el).parents("div.panel-body").find(".review-content").remove(); 				//li의 parent(ul)의 parent(div)의 자식(p태그) 삭제
		
	const input = $('<textarea/>');
	input.attr('class','review-content');
	input.attr('id','edit-review-content');
	input.val(content);	
	$(el).parents("div.panel-body").find(".review-content-div").append(input);
	$(el).attr('class','btn btn-default edit-review2');
	
	$(".edit-review2").on("click", function() {
		
		const rno = $(this).parents("div.panel-body").find('input[name="review_seq"]').val();
		const param = {
			review_seq : rno,
			review_content : $("#edit-review-content").val()
		}
	    $.ajax({
	        type: 'post',
	        url: '../product/reviews/' + rno,
			data: param,
	        success: function(result) {
	            alert('리뷰가 수정되었습니다.');
				$(this).attr('class','edit-review');
	            location.reload();
	        },
	        error: function(err) {
	            alert('에러');
				console.log(err);
	        }
	    });
	})
}

function deleteReview(el){
	if(confirm("리뷰를 삭제하시겠습니까?")) {
		const rno = $(el).parents(".panel-body").find('input[name="review_seq"]').val();
		// console.log(rno);
        $.ajax({
            type: 'delete',
            url: '../product/reviews/' + rno,
            success: function() {
                alert('리뷰가 삭제되었습니다.');
                location.reload();
            },
            error: function(err) {
                alert('에러');
				console.log(err);
            }
        });
    } else {
        return;
	}
}

$(document).ready(function() {
    const stock = Number($("#product_stock").val());
    const count = Number($("#select_count").val() || $("select[name=product_count]").val());
	$(".orderbtn").hide();

    // 재고가 없거나 선택한 수량이 재고보다 많을 때
    if (stock <= 0 || stock < count) {
        alert('품절인 상품입니다.');
        $(".selected_option").hide();
        $(".orderbtn").hide();
        $("#submit").hide();
    }
	
	// 셀렉트박스 변경 시 함수 호출
	$("#select_count").on('change', function() {
		if ($("#select_count").val() > 0) {
			updatePurchaseInfo();
		}
	});
	
	$(".selected_option").on("click", ".delete_option", deleteOption());
	
	$("#submit").click(function(){
		$("cart-form").submit();
	});
	
	$(".delete-btn").on("click", ".btn", function(){deleteReview(this)});
    
    $(".edit-btn").on("click", ".btn", function(){editReview(this)});
    
    // 초기 결제 금액 표시
    displayTotalPrice();
});