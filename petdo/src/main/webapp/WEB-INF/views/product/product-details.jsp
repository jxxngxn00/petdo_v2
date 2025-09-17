<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.javaclass.domain.ProductVO"%>
<%@page import="com.javaclass.dao.ProductDAO"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>${getProduct.product_name}</title>
	<%
		String pjName = "/petdo";
	%>
	<link href="<%=pjName%>/resources/mCss/bootstrap.min.css"
		rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/font-awesome.min.css"
		rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/prettyPhoto.css"
		rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/price-range.css"
		rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/animate.css" rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/main.css" rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/responsive.css" rel="stylesheet">
	<link rel="shortcut icon" href="<%=pjName%>/resources/images/ico/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144"
		href="<%=pjName%>/resources/images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114"
		href="<%=pjName%>/resources/images/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72"
		href="<%=pjName%>/resources/images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed"
		href="<%=pjName%>/resources/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->

<body>
	<header id="header">
        <jsp:include page="/WEB-INF/views/common/gnb.jsp" />
	</header>
	<!--/header-->

	<section>
		<div class="container" style="width: 70%">

			<div class="row">
				<h1 class="page-header"
					style="text-align: center; margin-bottom: 50px;">${productInfo.productName}</h1>
				<input type="hidden" value="${getProduct.product_name}"
					id="product_number" style="font-weight: bold">
				<input type="hidden" value="${getProduct.product_stock}" id="product1_stock"/>	
			</div>
			<div class="row" style="float: left; text-align: center; width: 35%;">
				<img alt="productPhoto"
					src="<%=pjName%>/resources/images/shop/${getProduct.stored_file_name}"
					width="150%" style="float: center;" name="stored_file_name">
			</div>

			<div class="row productInfo" style="width: 40%; float: right;">
				<div class="form-group" style="text-align: left;">
					<h3 class="page-header">
						<span>${getProduct.product_name}</span><br>
					</h3>
				</div>
				<div class="form-group" style="text-align: left;">
					<label>가격 : </label>
					<span>&nbsp; 
						<fmt:formatNumber value="${getProduct.product_price}" type="number" />
					</span>
					<span>&nbsp;${getProduct.product_price}원</span>
					<input type="hidden" value="${getProduct.product_price}" id="price">
				</div>
				<div class="form-group" style="text-align: left;">
					<label>배송비 : </label><span>&nbsp;2500원</span>
					<p>도서산간지역 배송비 5000원 / 3만원 이상 결제시 무료배송</p>
				</div>
				<div class="form-horizontal" style="text-align: left;">
					<label>구매수량 : </label> <select name="product_count"
						class="form-control" id="select_count">
						<c:forEach var="i" begin="1" end="${getProduct.product_stock}">
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>
				</div>
				<hr>
				<form action="../cart/insert.do" id="cart-form">
					<input type="hidden" name= "product_number" value="${getProduct.product_number}" />
	            	<input type="hidden" name="product_name" value="${getProduct.product_name}"/>
	            	<input type="hidden" name="user_id" value="${user_id}"/>
	            	<input type="hidden" name="product_price" value="${getProduct.product_price}"/>
					<input type="hidden"  value= '${getProduct.stored_file_name}'  name="stored_file_name">
					<input type="hidden"  id="count" name="product_count">
					
					<div class="row" style="margin-top: 20px; margin-left: 50px;">
						<div class="selected_option"
							style="text-align: right; margin-top: 230px;"></div>
						<div class="orderbtn" style="text-align: center;">
							<a href="../cart/cartList.do">
								<button id="submit" class="btn btn-fault cart" style="width: 200px">장바구니</button></a>
						</div>
					</div>
				</form>
			</div>
		</div>


		<hr />
		<div class="container">
			<div class="row nav" style="font-size: 16px; font-weight:bold; font-family: Noto Sans KR; letter-spacing: 6px; width: 100%;">
				<nav id="middle_nav">
				<ul class="nav nav-tabs nav-justified" style="display:flex; justify-content: center;">
					<li id="about" style="list-style-type: none; float: left;"><a href="#product-info">상품상세</a></li>
					<li id="review" style="list-style-type: none; float: left; margin-left: 260px"><a href="#product-review">리뷰</a></li>
				</ul>
				</nav>
			</div>

			<hr style="width: 100%;"/>

			<img src="<%=pjName%>/resources/images/banner55.jpg" width="100%"
				height="auto" style="margin-top: 20px; margin-bottom: 30px;" alt="" />

			<div id="product-info" class="row about_product"
				style="text-align: center;">
				<c:choose>
				  <c:when test="${not empty getProduct.stored_main_file_name}">
				    <img src="<%=pjName%>/resources/images/product-details/${getProduct.stored_main_file_name}" width="60%" height="auto">
				  </c:when>
				  <c:otherwise>
				    <img src="<%=pjName%>/resources/images/product-details/no-image.png" width="60%" height="auto">
				   	<h3>등록된 상품 상세 이미지가 없습니다.</h3>
				  </c:otherwise>
				</c:choose>
			</div>

			<!-- 리뷰 조회 -->
			<div class="view-reviews" style="text-align: center; margin: 80px 0;">
				<h1 class="page-header"
					style="margin-bottom: 50px; font-weight: bold">리뷰</h1>
				<div style="margin:auto;">
					<c:forEach items="${orderReview}" var="vo">
							<div class="form-group">
								<input name="product_number" type="hidden"
									value="${vo.product_number}" /> <label for="username"
									style="float: left; margin-top: 5px;"> 이름 <span
									class="require"></span>
								</label> <input type="text" class="form-control" id="username"
									value="${vo.review_writer}" readonly
									style="width: 14%; margin-left: 50px;">
							</div>
							<div style=" height:300px; vertical-align:center;">
								<div style="float:left; width:25%; margin-bottom: 30px; padding-left: 50px;">
									<img
										src="<%=pjName %>/resources/images/review/${vo.review_realname}"
										style="float: left; height:214px; width:auto;">
								</div>
								<div class="form-group" style="margin-left:10px; float:left; width:70%;">
									<textarea class="form-control" rows="10" id="reviewTxt" readonly
										style="word-break: break-all; width: 100%; height:100%;">${vo.review_content}</textarea>
								</div>
							</div>
					</c:forEach>
				</div>
			</div>




			<hr />
			<div class="product-page-content" id="review">
				<div class="row reviews" style="text-align: center; margin: 80px 0;">
					<h1 class="page-header"
						style="margin-bottom: 50px; font-weight: bold">리뷰 작성</h1>
					<!-- 리뷰 작성 -->
					<div class="product-page-content" id="review">
						<div class="tab-content" style="width: 100%;">
							<div class="tab-pane fade in active">
								<form id="reviewRegister" action="reviewRegister.do"
									class="reviews-form" method="post"
									enctype="multipart/form-data" style="">
									<div class="form-group">
										<input name="product_number" type="hidden"
											value="${getProduct.product_number}" /> <label
											for="review_writer" style="float: left; margin-top: 5px;">
											이름 <span class="require"></span>
										</label> <input type="text" class="form-control" name="review_writer"
											value=<%=session.getAttribute("login")%> readonly
											style="width: 14%; margin-left: 50px;">
									</div>
									<div>
										<input type="file" name="file" />
									</div>
									<div class="form-group" style="margin-top: 20px;">
										<textarea class="form-control" rows="8" id="reviewTxt"
											name="review_content"
											style="word-break: break-all; width: 100%;"></textarea>
									</div>
									<div class="padding-top-20">
										<button type="submit" id="review_btn"
											class="btn btn-primary reviewBtn" style="float: right">작성하기</button>
										<br /> <br /> <br />
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="underline">
			<div class="container">
				<div class="row">
					<i class="fa fa-love"></i>
				</div>
			</div>
		</div>
	</section>

	<footer id="footer">
        <jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</footer>
	<!--/Footer-->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="<%=pjName%>/resources/js/jquery_1.js"></script>
	<script src="<%=pjName%>/resources/js/price-range.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
	<script type="text/javascript">
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
      })
   </script>

</body>
</html>