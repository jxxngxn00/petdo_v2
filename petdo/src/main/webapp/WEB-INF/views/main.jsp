<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Home</title>
	<%
		String pjName = "/petdo";
	%>
	
	<!-- CSS -->
	<link href="<%=pjName%>/resources/mCss/bootstrap.min.css"
		rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/font-awesome.min.css"
		rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/prettyPhoto.css" rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/price-range.css" rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/animate.css" rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/main.css" rel="stylesheet">
	<link href="<%=pjName%>/resources/mCss/responsive.css" rel="stylesheet">
	
	<!-- icon -->
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
        <jsp:include page="/WEB-INF/views/common/gnb.jsp" />
	</header>

	<section id="slider">
		<!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
						</ol>

						<div class="carousel-inner">
							<div class="item active">
							<!-- 배너 -->
								<div class="col-sm-6 slider1">
									<a href="product/getCategoryList.do?category_code=1">
										<img src="<%=pjName%>/resources/images/home/main_01.png"
											class="girl img-responsive" alt="" /> </a>
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<a href="product/getCategoryList.do?category_code=2">
										<img src="<%=pjName%>/resources/images/home/main_002.png"
											class="girl img-responsive" alt="" /> </a>
								</div>
							</div>

							<div class="item">
								<div class="col-sm-6">
									<img src="<%=pjName%>/resources/images/home/main_03.jpg"
										class="girl img-responsive" alt="" />
								</div>
							</div>

						</div>

						<a href="#slider-carousel" class="left control-carousel hidden-xs"
							data-slide="prev"> <i class="fa fa-angle-left"></i>
						</a> <a href="#slider-carousel"
							class="right control-carousel hidden-xs" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!--/slider-->


	<hr />
	<!-- 실시간 best 목록 나열 -->
	<div id="top" class="col-sm-9 padding-right">
		<!--features_items-->
		<div class="features_items" style="margin-left: -30px;">
			<h2 class="title text-center" style="font-size: 45px; text-align: left;">STORE BEST</h2>
			<div class="productInfo text-center" style="float:center; display: inline-block; width: 100%; margin-left: 80px;">
				<div class="product-image-wrapper" style="float: left; display: inline-block; width: 100%;">
					<c:forEach items ="${productList}" var="vo">
						<div class="single-products" style="width: 30%; float: left;">
							<a href="product/product-details.do?product_number=${vo.product_number}"><img src="<%=pjName%>/resources/images/shop/${vo.stored_file_name}" width="400px" height="400px"></a>
							<p>
								<a href="product/product-details.do">
								<input name="product_name" type="text" value="${vo.product_name}" style="border-style: none; width: 100%; text-align: center; font-family: 'Noto Sans KR', sans-serif;"/></a>
							</p>
							<strong class="product_price"> <span
								style="font-size: 16px; color: #000000;" >${vo.product_price}원</span>
							</strong> <br /> 
							<img src="<%=pjName%>/resources/images/home/BEST.JPG"
								id="new" width="2px" height="auto" alt="" /> <img
								src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
								width="2px" height="auto" alt="" />
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!--/features_items-->
	</div>
	<hr/>

	<div class="category-tab">
		<img src="<%=pjName%>/resources/images/home/subbanner5.png" width="100%" height="auto" style="margin-bottom: 35px; margin-top: -12px"  alt="" />
		<div class="col-sm-9">
			<div class="tab-content">
				<!-- 신상품 순으로 나열 -->
				<div class="tab-pane fade active in" id="tshirt">
					<h2 class="text-category" style="margin-top: -5px; font-size: 45px">NEW PRODUCT</h2><br/><br/>
					<div class="productInfo text-center" style="float: left; display: inline-block; width: 100%; margin-left: 50px; margin-right: 50px;">
						<div class="product-image-wrapper" style="float: left; display: inline-block;">
							<c:forEach items ="${newproductList}" var="vo">
								<div class="single-products" style="float: left; margin-left: 40px; margin-right: 40px; width: 20%">
									<div class="productInfo text-center">
										<a href="product/product-details.do?product_number=${vo.product_number}"><img src="<%=pjName%>/resources/images/shop/${vo.stored_file_name}" width="207px" height="183px"></a>
										<h2>${vo.product_name}</h2>
										<p>${vo.product_price}원</p>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/category-tab-->

	<a href="product/getCategoryList.do?category_code=14"><img
		src="<%=pjName%>/resources/images/home/subbanner2.png" width="100%"
		height="auto" alt="" /></a>
		
		
	<div class="col-sm-9">
		<!--recommended_items-->
		<div class="recommended_items">
			<h2 class="title text-center"
				style="margin-top: 20px; text-align: left; font-size: 45px">CARE ITEM</h2>
			<div id="recommended-item-carousel" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="item active" style="margin-left: 12%;">
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=232"><img
											src="<%=pjName%>/resources/images/home/care1.jpg"
											alt="" /></a>
										<p>덴탈 솔루션 치약</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">14900원
												&nbsp;</span>
										</strong> <br /> 
										<img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=277"><img
											src="<%=pjName%>/resources/images/home/care2.jpg"
											alt="" /></a>
										<p>퀵 클렌징 세트 (워터리스샴푸+타월S)</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">15900원
												&nbsp;</span>
										</strong><br /> 
										<img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=250"><img
											src="<%=pjName%>/resources/images/home/care3.jpg"
											alt="" /></a>
										<p>버블 샴푸 독스</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">21500원
												&nbsp;</span>
										</strong> <br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item" style="margin-left: 12%;">
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=292"><img
											src="<%=pjName%>/resources/images/home/care4.jpg"
											alt="" /></a>
										<p>피니쉬 세트 (퀵클리너+브러쉬)</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">23900원
												&nbsp;</span>
										</strong> <br /> 
										<img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=253"><img
											src="<%=pjName%>/resources/images/home/care5.jpg"
											alt="" /></a>
										<p>매직 글러브</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">21900원
												&nbsp;</span>
										</strong> <br /> 
										<img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=234"><img
											src="<%=pjName%>/resources/images/home/care6.jpg"
											alt="" /></a>
										<p>논슬립 폴더블 욕조</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">48900원
												&nbsp;</span>
										</strong> <br /> 
										<img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="left recommended-item-control"
					href="#recommended-item-carousel"
					style="margin-left: -1820px; margin-top: 7%; border-radius: 50%;"
					data-slide="prev"> <i class="fa fa-angle-left"
					style="border-radius: 50%;"></i>
				</a> <a class="right recommended-item-control"
					href="#recommended-item-carousel" style="margin-top: 7%"
					data-slide="next"> <i class="fa fa-angle-right"
					style="border-radius: 50%;"></i>
				</a>
			</div>
		</div>
	</div>
	<!--/recommended_items-->
	
	<!-- 배너 -->
	<a href="product/getCategoryList.do?category_code=5"><img
		src="<%=pjName%>/resources/images/home/subbanner3.png" width="100%"
		height="auto" alt="" /></a>

	<div class="col-sm-9">
		<!--recommended_items-->
		<div class="recommended_items">
			<br />
			<h2 class="title text-center"
				style="margin-top: 20px;  text-align: left; font-size: 45px">FOOD ITEM</h2>

			<div id="recommended-item-carousel" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="item active" style="margin-left: 12%;">
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=2"><img
											src="<%=pjName%>/resources/images/home/food1.jpg"
											alt="" /></a>
										<p>텐더 저키 독스</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">12900원
												&nbsp;</span>
										</strong> <br /> 
										<img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=2"><img
											src="<%=pjName%>/resources/images/home/food2.jpg"
											alt="" /></a>
										<p>레인보우 링스/플라워 샤워 시리얼</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">7900원
												&nbsp;</span>
										</strong> <br /> 
										<img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=8"><img
											src="<%=pjName%>/resources/images/home/food3.jpg"
											alt="" /></a>
										<p>프레쉬 덴탈츄</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">16900원
												&nbsp;</span>
										</strong> <br /> 
										<img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item" style="margin-left: 12%;">
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=55"><img
											src="<%=pjName%>/resources/images/home/food4.jpg"
											alt="" /></a>
										<p>오리젠 시니어 독 2kg</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">35100원
												&nbsp;</span>
										</strong> <br /> 
										<img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=7"><img
											src="<%=pjName%>/resources/images/home/food5.jpg"
											alt="" /></a>
										<p>스위트 골드바</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">12900원
												&nbsp;</span>
										</strong> <br /> 
										<img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productInfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<a href="product/product-details.do?product_number=68"><img
											src="<%=pjName%>/resources/images/home/food6.jpg"
											alt="" /></a>
										<p>캐니비타 멀티 콜라겐</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">21900원
												&nbsp;</span>
										</strong> <br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="left recommended-item-control"
					href="#recommended-item-carousel"
					style="margin-left: -1820px; margin-top: 7%; border-radius: 50%;"
					data-slide="prev"> <i class="fa fa-angle-left"
					style="border-radius: 50%;"></i>
				</a> 
				<a class="right recommended-item-control"
					href="#recommended-item-carousel" style="margin-top: 7%"
					data-slide="next"> <i class="fa fa-angle-right"
					style="border-radius: 50%;"></i>
				</a>
			</div>
			
			<!-- 이벤트 : 영상, 광고 이미지 -->
			<div style="float: left; display: inline-block; margin-top: 30px;">
			<hr/>
			<h2 class="title text-center"
					style="text-align: CENTER; font-size: 45px; color: #FF9933">EVENT</h2>
				<video muted autoplay loop>
		      			<source src="<%=pjName%>/resources/images/shop/VIDEO.mp4" type="video/mp4">
		    	</video>
		    	<img src="<%=pjName%>/resources/images/shop/mainbanner.jpg" alt="" style=" margin-top: 20px; height: 537px;"/>
			</div>
		</div>
	</div>
	<!--/recommended_items-->
	<!-- logout Modal -->
    <jsp:include page="/WEB-INF/views/common/logoutModal.jsp" />	
	<!-- /logout Modal -->
	<footer id="footer">
        <jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</footer>
	<!--/Footer-->

	<!-- script -->
	<script src="<%=pjName%>/resources/js/jquery.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/price-range.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
	<script src="<%=pjName%>/resources/js/search.js"></script>
</body>
</html>