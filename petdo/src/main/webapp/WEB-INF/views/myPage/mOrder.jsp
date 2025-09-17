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
	<title>주문정보</title>
	<% String pjName = "/petdo"; %>
	
	<!-- css -->
	<link href="<%=pjName%>/resources/mCss/bootstrap.min.css"
		rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/font-awesome.min.css"
		rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/prettyPhoto.css" rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/price-range.css" rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/animate.css" rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/main.css" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/responsive.css" rel="stylesheet">
	
	<!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
	    <![endif]-->
	<link rel="shortcut icon" href="images/ico/favicon.ico">
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
        <jsp:include page="/WEB-INF/views/common/gnb.jsp" />		
	</header>

	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<br /> <br /> <br />
					<h2 class="title text-center"
						style="margin-bottom: 80px; font-size: 45px; font-family: 'Noto Sans KR', sans-serif;">Order
						List</h2>
				</div>
			</div>

			<div class="col-sm-8" style="margin: auto;">
				<div class="blog-post-area-list" style="display: inline;">
					<table id="qnaTable" style="width:75%;">
						<thead>
							<tr style="font-size: 16pt; height: 75px; border-bottom: 1px solid #cdcdcd;">
								<th style="text-align: center;">주문번호</th>
								<th style="text-align: center;">상품이름</th>
								<th style="text-align: center;"></th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${userOrderList}" var="list">
								<tr style="text-align: center; height:50px; border-bottom: 1px solid #e8e8e8;">
									<td><a
										href="mOrderDetail.do?order_detail_number=${ list.order_detail_number}">${list.order_detail_number }</a></td>
									<td><a
										href="mOrderDetail.do?order_detail_number=${ list.order_detail_number}">${list.product_name }</a></td>
										
									<c:if test="${list.order_detail_status eq '배송중' or list.order_detail_status eq '준비중'}">
									<td style="padding:10px; text-align: center; align:center;">
										<a href="confirm.do?order_detail_number=${ list.order_detail_number}"><i  class="fa fa-check" aria-hidden="true"></i></a>
									</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>

			<div class="row" style="margin: 0px auto;">

				<div class="col-sm-4" style="margin-top: -10px;">
					<div class="contact-info">
						<p class="title text-center" id="fonttitle"
							style="text-transform: capitalize; font-family: 'Noto Sans KR', sans-serif;">Order
							Info</p>
					</div>
					<h3
						style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 22px; font-weight: bold; font-size: 18px;">나의
						정보</h3>
					<ul>
						<li style="margin-left: -38px;"><a
							href="account.do?user_id=${sessionScope.login}"
							style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">회원
								정보 조회</a><br /> <br />
							<a href="accountModify.do?user_id=${sessionScope.login}"
						style="font-family: 'Noto Sans KR', sans-serif;" >회원 정보 수정</a><br />
							<br /> <a href="#" data-toggle="modal"
							data-target="#logoutModalCenter"
							style="font-family: 'Noto Sans KR', sans-serif;">로그아웃</a><br />
							<br /> <br /></li>

					</ul>
					<div class="subtitle">
						<h3
							style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 22px; font-weight: bold; font-size: 18px;">주문
							정보</h3>
					</div>
					<ul>
						<li style="margin-left: -38px;"><a
							href="mOrder.do?user_id=${sessionScope.login}"
							style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">주문
								내역</a><br /> <br /> <a href="../cart/cartList.do"
							style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">장바구니</a><br />
						</li>
					</ul>

				</div>

			</div>
		</div>
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
	
	<!-- password check Modal -->
	<div class="modal fade" id="passwordModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="exampleModalLabel">Petdo - 비밀번호 확인</h2>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body" style="padding: 10px;">
					비밀번호를 한번 더 입력해주세요. <br/>
					<input type="password" id="pwdInput" placeholder="비밀번호" style="width:100%"/>
				</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal" style="border-radius: 10px;">취소</button>
					<button class="btn btn-primary" type="button" id="pwdChk"
						data-dismiss="modal" style="border-radius: 10px; margin-top:0px;">확인</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /password check Modal -->
	
	<footer id="footer">
        <jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</footer>
	<!--/Footer-->



	<script src="<%=pjName%>/resources/js/jquery.js"></script>
	<script src="<%=pjName%>/resources/js/price-range.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
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
    })
    </script>
</body>
</html>