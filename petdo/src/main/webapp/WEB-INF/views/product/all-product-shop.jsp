<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>petdo | 상품 목록</title>
     <% String pjName="/petdo"; %>
    <link href="<%=pjName %>/resources/mCss/bootstrap.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/font-awesome.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/prettyPhoto.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/price-range.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/main.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/responsive.css" rel="stylesheet">

    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		
		<div class="container">
			<div class="header-middle"><!--header-middle-->
				<a href="../main.do"><img src="<%=pjName%>/resources/images/home/logo.png" width="12%" height="auto" id="petlogo" alt="" /></a>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav" id="headerbar">
							<li class="ment" style="margin-top: 12px;"><%= session.getAttribute("login") %>님 환영합니다.</li>
							<li><a href="../logOut.do"><i class="fa fa-sign-out"></i></a></li>
							<li><a href="../myPage/account.do?user_id=${sessionScope.login  }"><i class="fa fa-user"></i></a></li>
							<li><a href="../pay/cart.do"><i class="fa fa-shopping-cart"></i></a></li>
							<c:if test="${'admin' eq sessionScope.login }">
								<li><a href="../admin.do"><i class="fa fa-cogs" aria-hidden="true"></i></a></li>
							</c:if>
						</ul>
				
					</div>
				</div>
			</div>
		</div>
	<!--/header_top : 로그인 / 장바구니 등 4개 아이콘 : header-->

	
		<div class="header_middle"></div>
		<div class="header-bottom"><!--header-bottom-->
	
			<div class="container">
				<div class="row">
					<div id="sm-9" class="col-sm-9">
						<div class="mainmenu pull-left ">
							<ul class="nav navbar-nav collapse navbar-collapse" style="font-size: 0;">
								
								<li class="dropdown"><a href="../product/care-shop.do">케어<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="../product/care1-shop.do">목욕</a></li>
										<li><a href="../product/care2-shop.do">미용</a></li> 
									</ul>
								</li> 
								<li class="dropdown"><a href="../product/toilet-shop.do">배변/위생<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="../product/toilet1-shop.do">배변용품</a></li>
										<li><a href="../product/toilet2-shop.do">위생용품</a></li>
									</ul>
								</li> 
								<li><a href="../product/toy-shop.do">장난감</a></li>
								
								<li class="dropdown"><a href="../product/food-shop.do">식품<i class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a href="../product/food1-shop.do">간식</a></li>
										<li><a href="../product/food2-shop.do">사료</a></li>
										<li><a href="../product/food3-shop.do">영양제</a></li>
									</ul>
								</li>
								<li><a href="../product/living-shop.do">리빙용품</a></li> 
								<li class="dropdown"><a href="../product/closet-shop.do">의류<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="../product/closet1-shop.do">프리미엄</a></li>
										<li><a href="../product/closet2-shop.do">아우터</a></li>
										<li><a href="../product/closet3-shop.do">상의</a></li>
										<li><a href="../product/closet4-shop.do">악세사리</a></li>
									</ul>
								</li>
								<li><a href="../blog/notice.do" style="color: #FF9933;">NOTICE</a></li> 
								<li><a href="../blog/faq.do" style="color: #FF9933;" >FAQ</a></li>
								<li><a href="../blog/qna.do" style="color: #FF9933;" >QnA</a></li>
							</ul>
						</div>
							<!-- 검색창 -->
						<div class="search_box pull-right">
						<form action="searchItems.do" id="searchFrm">
							<input type="text" placeholder="검색" name="keyword"/> 
							<a id="searchBtn" style="margin-left: 140px; margin-top: 9px; position: absolute;">
							<i class="fa fa-search" aria-hidden="true"></i></a>
						</form>
						</div>
						<div id="topHeader" class="appTopArea" style="top: 0px;"></div>
							<!-- /검색창 -->
							
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
			
	</header>


	
	<section>
		
	
		<img src="<%=pjName %>/resources/images/home/subbanner_1.png" id='subbaner' width="100%" height="auto" alt="" />		
	
		<div class="ec-base-tab typeMenu">
			<ul class="menuCategory menu clearfix">
				<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="../care-shop.do" class="button" style="letter-spacing: 5px;">케어</a>
				</li>
				<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="../toilet-shop.do" class="button">배변/위생</a>    
				</li>
				<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="../toy-shop.do" class="button">장난감</a>      
				</li>
				<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="../food-shop.do" class="button">식품</a>           
				</li>
				<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="../living-shop.do" class="button">홈/리빙</a>               
				</li>
				<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="../closet-shop.do" class="button">의류</a>      
				</li>
			</ul>
		</div>
		<div class="col-sm-9 padding-right">
			<div class="features_items"><!--features_items-->
				<article class="cont-select">
					<button class="btn-select">신상품</button>
					<ul class="list-member">
						<li><button type="button">상품명</button></li>
						<li><button type="button">낮은가격</button></li>
						<li><button type="button">높은가격</button></li>
					</ul>
				</article>
			
				<div class="col-sm-4" id="col-sm-4">
					<div class="productinfo text-center">
						<div class="product-image-wrapper">
							<div class="single-products">
							<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
							<p>테디 블라썸 져지</p>
									<strong class="product_price">
										<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
									</strong>
									<strong class="sale_price">
										<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
									</strong><br/>
									<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
									<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-sm-4" id="productimg">
						<div class="productinfo text-center">
							<div class="product-image-wrapper">
								<div class="single-products">
								<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg"alt=""/>
								<p>테디 블라썸 져지</p>
										<strong class="product_price">
											<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
										</strong>
										<strong class="sale_price">
											<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
										</strong><br/>
										<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
										<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
								</div>
							</div>
						</div>	
					</div>
				<div class="col-sm-4">
					<div class="productinfo text-center">
						<div class="product-image-wrapper">
							<div class="single-products">
							<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
							<p>테디 블라썸 져지</p>
									<strong class="product_price">
										<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
									</strong>
									<strong class="sale_price">
										<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
									</strong><br/>
									<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
									<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-sm-4">
					<div class="productinfo text-center">
						<div class="product-image-wrapper">
							<div class="single-products">
							<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
							<p>테디 블라썸 져지</p>
									<strong class="product_price">
										<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
									</strong>
									<strong class="sale_price">
										<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
									</strong><br/>
									<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
									<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-sm-4">
					<div class="productinfo text-center">
						<div class="product-image-wrapper">
							<div class="single-products">
							<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
							<p>테디 블라썸 져지</p>
									<strong class="product_price">
										<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
									</strong>
									<strong class="sale_price">
										<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
									</strong><br/>
									<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
									<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-sm-4">
					<div class="productinfo text-center">
						<div class="product-image-wrapper">
							<div class="single-products">
							<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
							<p>테디 블라썸 져지</p>
									<strong class="product_price">
										<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
									</strong>
									<strong class="sale_price">
										<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
									</strong><br/>
									<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/><img src="images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
									<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-sm-4" >
					<div class="productinfo text-center">
						<div class="product-image-wrapper">
							<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
							<p>테디 블라썸 져지</p>
							<strong class="product_price">
								<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
							</strong>
							<strong class="sale_price">
								<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
							</strong><br/>
							<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
							<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
						</div>
					</div>	
				</div>
				<div class="col-sm-4">
					<div class="productinfo text-center">
						<div class="product-image-wrapper">
							<div class="single-products">
							<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
							<p>테디 블라썸 져지</p>
									<strong class="product_price">
										<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
									</strong>
									<strong class="sale_price">
										<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
									</strong><br/>
									<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
									<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-sm-4" id="col-sm-4">
					<div class="productinfo text-center">
						<div class="product-image-wrapper">
							<div class="single-products">
							<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
							<p>테디 블라썸 져지</p>
									<strong class="product_price">
										<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
									</strong>
									<strong class="sale_price">
										<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
									</strong><br/>
									<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
									<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-sm-4" id="col-sm-4">
					<div class="productinfo text-center">
						<div class="product-image-wrapper">
							<div class="single-products">
							<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
							<p>테디 블라썸 져지</p>
									<strong class="product_price">
										<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
									</strong>
									<strong class="sale_price">
										<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
									</strong><br/>
									<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
									<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-sm-4" id="col-sm-4">
					<div class="productinfo text-center">
						<div class="product-image-wrapper">
							<div class="single-products">
							<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
							<p>테디 블라썸 져지</p>
									<strong class="product_price">
										<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
									</strong>
									<strong class="sale_price">
										<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
									</strong><br/>
									<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
									<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-sm-4" id="col-sm-4">
						<div class="productinfo text-center">
							<div class="product-image-wrapper">
								<div class="single-products">
								<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
								<p>테디 블라썸 져지</p>
										<strong class="product_price">
											<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
										</strong>
										<strong class="sale_price">
											<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
										</strong><br/>
										<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
										<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
								</div>
							</div>
						</div>	
					</div>
			</div><!--features_items-->
		</div>
		<div>
			<ul class="pagination">
				<li class="active"><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
				<li><a href="">&raquo;</a></li>
			</ul>
		</div>
	</section>
	<footer id="footer" style="background: #F0F0E9;"><!--Footer-->
		<div class="footer-widget"  style="background: #F0F0E9;">
			<div class="container"  style="background: #F0F0E9;">
				<div class="row" style="background: #F0F0E9; padding:3%;">     
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
					   <div class="contact-info">
						  <h2 class="title text-center">Contact Info</h2>
						  <address>
							 <p>(주)펫두 </p>
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
	</footer><!--/Footer-->
    <script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
    <script type="text/javascript">
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
    </script>
</body>
</html>
