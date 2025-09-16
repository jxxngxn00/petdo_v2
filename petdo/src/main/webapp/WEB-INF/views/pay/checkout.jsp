<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>결제 확인</title>
<%
	String pjName = "/petdo";
%>
<link href="<%=pjName%>/resources/pay-css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/prettyPhoto.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/price-range.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/animate.css" rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/main.css" rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/responsive.css"
	rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon"
	href="<%=pjName%>/resources/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-57-precomposed.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
</head>
<!--/head-->

<body>
	<header id="header">
		<!--header-->

		<div class="container">
			<div class="header-middle">
				<!--header-middle-->
				<a href="../main.do"><img
					src="<%=pjName%>/resources/images/home/logo.png" width="12%"
					height="auto" id="petlogo" alt="" /></a>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<!-- 로그아웃, 마이페이지, 장바구니, 관리자페이지(관리자일경우) 아이콘 -->
						<ul class="nav navbar-nav" id="headerbar">
							<li class="ment" style="margin-top: 12px;"><%=session.getAttribute("login")%>님
								환영합니다.</li>
							<li><a href="#" data-toggle="modal"
								data-target="#logoutModalCenter"><i class="fa fa-sign-out"></i></a></li>
							<li><a
								href="../myPage/account.do?user_id=${sessionScope.login }"><i
									class="fa fa-user"></i></a></li>
							<li><a href="../cart/cartList.do"><i class="fa fa-shopping-cart"></i></a></li>
							<c:if test="${'admin' eq sessionScope.login }">
								<li><a href="../admin.do"><i class="fa fa-cogs"
										aria-hidden="true"></i></a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--/header_top : 로그인 / 장바구니 등 4개 아이콘 : header-->


		<div class="header_middle"></div>
		<div class="header-bottom">
			<!--header-bottom-->

			<div class="container">
				<div class="row">
					<div id="sm-9" class="col-sm-9">

						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>

						<div class="mainmenu pull-left ">
							<ul class="nav navbar-nav collapse navbar-collapse"
								style="font-size: 0;">
								<li class="dropdown"><a
									href="../main.do">홈</a></li>
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=14">케어<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=14">목욕</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=15">미용</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=9">배변/위생<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=9">배변용품</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=8">위생용품</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=5">식품<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=5">간식</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=6">사료</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=7">영양제</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=1">의류<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=1">프리미엄</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=2">아우터</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=3">상의</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=4">악세사리</a></li>
									</ul></li>
								<li><a href="../blog/notice.do" style="color: #FF9933;">NOTICE</a></li>
								<li><a href="../blog/faq.do" style="color: #FF9933;">FAQ</a></li>
								<li><a href="../blog/qna.do" style="color: #FF9933;">Q&A</a></li>
							</ul>
						</div>
						<!-- 검색창 -->
						<div class="search_box pull-right">
						<form action="../product/searchItems.do" id="searchFrm">
							<input type="text" placeholder="검색" name="keyword"/> 
							<a id="searchBtn" style="margin-left: 140px; margin-top: 9px; position: absolute;">
							<i class="fa fa-search" aria-hidden="true"></i></a>
						</form>
						</div>
						<div id="topHeader" class="appTopArea" style="top: 0px;"></div>
						<!-- /검색창 -->
					</div>
	</header>

	<!--/register-req-->

	<section id="cart_items">

	<div class="address-info" id="address-info">
		<table class="type09" style="margin-left:675px;">
			<thead>
				<tr>
					<th scope="cols" colspan='2'>배송정보</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">받는 사람</th>
					<td>${userInfo.user_name }</td>
				</tr>
				<tr>
					<th scope="row">휴대전화</th>
					<td>${userInfo.user_phone }</td>
				</tr>
				<tr>
					<th scope="row" rowspan='2'>배송지 주소</th>
					<td><input type='text' readonly="true" value="${userInfo.user_address1 }"><input
						type='button' value='우편번호'></td>
				</tr>
				<tr>
					<td><input type='text'></td>
				</tr>
				<tr>
					<th scope="row">배송요청사항</th>
					<td><input type='text'></td>
				</tr>
			</tbody>
		</table>
	</div>
		<div class="table-responsive cart_info">
			<table class="table table-condensed"
				style="width: 900px; margin:auto;">
				<thead>
					<tr>
						<th colspan="5">
							<div  class="review-payment">
								<h2 style="margin-left:0px;">Review & Payment</h2>
							</div>
						</th>
					</tr>
					<tr class="cart_menu">
						<th class="image" style="text-align: center">상품사진</th>
						<th class="description" style="text-align: center">상품이름</th>
						<th class="price" style="width: 40px; text-align: center;">가격</th>
						<th class="quantity" style="width: 40px; text-align: center;">수량</th>
						<th class="total" style="width: 70px; text-align: center;">총가격</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cart" items="${cartList}" varStatus="i">
						<form id="submit" method="post" action="payment.do">
							<input type="hidden" name="user_id" value="${cart.user_id}" />
							<input type="hidden" name="totalMoney" value="${cart.totalMoney}" />
							<tr>
								<td style="width: 150px; text-align: center;">
									<img src='<%=pjName%>/resources/images/shop/${cart.stored_file_name}'  name="stored_file_name" width="160px" height="auto">
								</td>
								<td style="width: 200px; text-align: left;">${cart.product_name}
									<input type="hidden" name="product_number"
									value="${cart.product_number}" />
								</td>
								<td style="width: 60px; text-align: right;"><input
									type="text" name="product_price"
									style="width: 50px; border-style: none; background-color: #f5f5f5; text-align: right;"
									readonly pattern="###,###,###" value="${cart.product_price}"  />원</td>
								<td style="width: 50px; text-align: right; "><input
									type="text" readonly name="product_count"
									style="width: 70px; border-style: none; background-color: #f5f5f5; text-align: right;"
									value="${cart.product_count}" />개</td>
								<td style="width: 55px; text-align: right;"><input
									type="text" readonly name="product_sum"
									style="width: 70px; border-style: none; background-color: #f5f5f5; text-align: right;"
									value="${cart.product_price*cart.product_count}" />원</td>
							</tr>
									</form>
						</c:forEach>
				</tbody>
			</table>
		</div>

		<div id='pay-total'>
			<table style="margin:auto;">
				<tbody>
					<tr>
						<td colspan="4">&nbsp;</td>
						<td colspan="2">

							<table class="table table-condensed total-result" id="payTbl"
								style="width: 100%">
								<tr>
									<td colspan="2">
										<div class="review-payment">
											<h2>최종 결제 금액</h2>
										</div>
									</td>
								</tr>
								<tr>
									<td id='totaltable' style="color: white; font-size: 17px; font-family: 'Noto Sans KR', sans-serif;">총 상품금액</td>
									<td style="font-size: 17px; width: 300px; text-align: right;">${totalMoney}원</td>
								</tr>
								<tr class="shipping-cost ">
									<td id='totaltable' style="color: white; font-size: 17px; font-family: 'Noto Sans KR', sans-serif;">배송비</td>
									<td style="font-size: 17px; width: 300px; text-align: right;" >0원</td>
								</tr>
								<tr>
									<td id='totaltable' style="color: white; font-size: 17px; font-family: 'Noto Sans KR', sans-serif;">총 결제금액</td>
									<td style="font-size: 17px; width: 300px; text-align: right;"><span>${totalMoney}원</span></td>
								</tr>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="payment-options">
			<table class="table table-condensed total-result" style="margin:auto; margin-top:20px; margin-bottom:20px; width: 600px;">
				<tr>
					<td>
						<div class="review-payment">
							<h2 >결제 방법</h2>
						</div>
					</td>
				</tr>
				<tr>
					<td><label><input checked="checked" id="creditCard" type="radio" name="payment"> &emsp; 신용카드</label></td>
				</tr>
				<tr>
					<td><label><input id="moneytransfer" type="radio" name="payment"> &emsp;  실시간 이체</label></td>

				</tr>
			</table>
		</div>
	</section>
	<!--/#cart_items-->
	<section style="width:500px; margin:auto; text-align:center;">
	<div id='pay-agree'>

		<label><input type="checkbox" style="margin-left: 25px;" required> 위 주문 내용을 확인하였으며 결제를
			동의합니다.</label>
	</div>

	<form id='paycan-btn' style='display: inline-block; width:300px; margin:auto; text-align:center; margin-bottom:30px; background-color: #f5f5f5;'>
		<div style="text-align:center; margin-top:40px;">
			<a class="btn btn-default check_out" id="pay-btn"
				href="../pay/payment.do" style="margin-bottom:50px">결제하기</a> 
			<a class="btn btn-default cancel"
				id="cancel-btn" href="../cart/cartList.do" style="margin-bottom:50px">취소하기</a>
		</div>
	</form>
	</section>

	<!-- logout Modal -->
	<div class="modal fade" id="logoutModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="exampleModalLabel">Petdo - 로그아웃</h2>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body" style="padding: 50px;">로그아웃 하시겠습니까?</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal" style="border-radius: 10px;">취소</button>
					<a class="btn btn-primary" href="../logOut.do"
						style="border-radius: 10px; margin-top: 0px">로그아웃</a>
				</div>
			</div>
		</div>
	</div>
	<!-- /logout Modal -->

	<footer id="footer">
		<!--Footer-->
		<div class="footer-widget">
			<div class="container">
				<div class="row" style="padding: 3%; ">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<div class="contact-info">
							<h2 class="title text-center">Contact Info</h2>
							<address>
								<p>(주)펫두</p>
								<p>서울 금천구 가산디지털2로 101 3층 302호</p>
								<p>서울특별시 금천구 가산동</p>
								<p>Mobile: +82 10 1234 5678</p>
								<p>Fax: 1234-5678</p>
								<p>Email:petdo@shopper.com</p>
							</address>

						</div>
					</div>
				</div>
			</div>
		</div>



	</footer>
	<!--/Footer-->



	<script src="<%=pjName%>/resources/js/jquery.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/price-range.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
	<script type="text/javascript">
		$(function(){
			//상품 검색 jQuery
			$('#searchBtn').click(function(){
				
				//검색 input의 값을 저장함
				let keyword = $('#searchFrm input[name="keyword"]').val();
				
				//null값이거나 빈칸일 경우 알림창 띄움, 값이 있을 경우에만 검색
				if(keyword==null || keyword==' '){
					alert('검색어를 입력해주세요.');
				} else {
					$('#searchFrm').attr('action','../product/searchItems.do?keyword='+keyword);
					$('#searchFrm').submit();	
				}//end of if
			})//end of click
			
			//계좌이체 선택시 계좌 입력 폼으로 이동
			$('input#moneytransfer').click(function(){
				//alert('moneytransfer');
				$('a#pay-btn').attr('href','../pay/moneytransfer.do');
			});//end of click


			//신용카드 선택시 카드 입력 폼으로 이동
			$('input#creditCard').click(function(){
				//alert('credit');
				$('a#pay-btn').attr('href','../pay/payment.do');
			});//end of click
			
			
	    	//상품 검색 jQuery
			$('#searchBtn').click(function(){
					
			//검색 input의 값을 저장함
			let keyword = $('#searchFrm input[name="keyword"]').val();
					
			//null값이거나 빈칸일 경우 알림창 띄움, 값이 있을 경우에만 검색
			if(keyword==null || keyword==' '){
					alert('검색어를 입력해주세요.');
				} else {
					$('#searchFrm').attr('action','../product/searchItems.do?keyword='+keyword);
					$('#searchFrm').submit();	
				}//end of if
			})//end of click
			
		})//end of function
	</script>
</body>
</html>