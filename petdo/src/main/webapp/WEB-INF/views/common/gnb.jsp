<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
	<div class="header_top">
		
		<!-- 로고 -->
		<a href="${pageContext.request.contextPath}/main.do">
			<img src="${pageContext.request.contextPath}/resources/images/home/logo.png" width="12%" 
				height="auto" id="petlogo" style="margin-top: 10px;" alt="" />
		</a>
			
		<!-- 사용자 아이디 표시, 로그아웃, 마이페이지, 장바구니, 관리자 페이지(관리자일 경우) 아이콘 -->
		<div class="col-sm-8">
			<div class="shop-menu pull-right">
				<ul class="nav navbar-nav" id="headerbar">
					<li class="ment" style="margin-top: 12px;">${sessionScope.login}님
						환영합니다.</li>
					<li><a href="#" data-toggle="modal" data-target="#logoutModalCenter"><i class="fa fa-sign-out"></i></a></li>
					<li><a href="${pageContext.request.contextPath}/myPage/account.do?user_id=${sessionScope.login }"><i class="fa fa-user"></i></a></li>
					<li><a href="${pageContext.request.contextPath}/cart/cartList.do"><i class="fa fa-shopping-cart"></i></a></li>
					<c:if test="${'admin' eq sessionScope.login }">
						<li><a href="${pageContext.request.contextPath}/admin.do"><i class="fa fa-cogs"
								aria-hidden="true"></i></a></li>
					</c:if>
				</ul>

			</div>
		</div>
	</div>
</div>
<!--/header_top : 로그인 / 장바구니 등 4개 아이콘 : header-->

<div class="header-bottom">
	<!--header-bottom-->

	<div class="container">
		<div class="row">
			<div id="sm-9" class="col-sm-9">

				<!-- 상단바 : 상품 카테고리별 분류, 블로그(Q&A, FAQ, 공지사항) -->
				<div class="mainmenu pull-left ">
					<ul class="nav navbar-nav collapse navbar-collapse"
						style="font-size: 0;">
						<li class="dropdown"><a href="${pageContext.request.contextPath}/main.do">홈</a></li>
						<li class="dropdown">
							<a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=14">
								케어<i class="fa fa-angle-down"></i>
							</a>
							<ul role="menu" class="sub-menu">
								<li><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=14">목욕</a></li>
								<li><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=15">미용</a></li>
							</ul></li>
						<li class="dropdown"><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=9">배변/위생<i
								class="fa fa-angle-down"></i></a>
							<ul role="menu" class="sub-menu">
								<li><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=9">배변용품</a></li>
								<li><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=8">위생용품</a></li>
							</ul></li>
						<li class="dropdown"><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=5">식품<i
								class="fa fa-angle-down"></i></a>
							<ul role="menu" id="sub-menu-txt" class="sub-menu">
								<li><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=5">간식</a></li>
								<li><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=6">사료</a></li>
								<li><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=7">영양제</a></li>
							</ul></li>
						<li class="dropdown"><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=1">의류<i
								class="fa fa-angle-down"></i></a>
							<ul role="menu" class="sub-menu">
								<li><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=1">프리미엄</a></li>
								<li><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=2">아우터</a></li>
								<li><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=3">상의</a></li>
								<li><a href="${pageContext.request.contextPath}/product/getCategoryList.do?category_code=4">악세사리</a></li>
							</ul></li>
						<li><a href="${pageContext.request.contextPath}/blog/notice.do" style="color: #FF9933;">NOTICE</a></li>
						<li><a href="${pageContext.request.contextPath}/blog/faq.do" style="color: #FF9933;">FAQ</a></li>
						<li><a href="${pageContext.request.contextPath}/blog/qna.do" style="color: #FF9933;">QnA</a></li>
					</ul>
				</div>
				
				<!-- 검색창 -->
				<div class="search_box pull-right">
					<form action="${pageContext.request.contextPath}/product/searchItems.do" id="searchFrm">
						<input type="text" placeholder="검색" name="keyword"/> 
						<a id="searchBtn" style="margin-left: 140px; margin-top: 9px; position: absolute;"><i
							class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
					</form>
				</div>
				<div id="topHeader" class="appTopArea" style="top: 0px;"></div>
				<!-- /검색창 -->
				
			</div>
		</div>
	</div>
</div>
