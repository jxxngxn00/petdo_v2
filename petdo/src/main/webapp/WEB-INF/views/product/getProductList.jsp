<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.javaclass.domain.ProductVO"%>
<%@page import="com.javaclass.domain.PagingVO"%>
<%@page import="com.javaclass.service.ProductServiceImpl"%>




<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Petdo</title>
	<% String pjName="/petdo"; %>
	<%ProductVO vo=  new ProductVO(); %>
	
	<link href="<%=pjName %>/resources/mCss/bootstrap.min.css"
		rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/font-awesome.min.css"
		rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/prettyPhoto.css"
		rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/price-range.css"
		rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/main.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/responsive.css" rel="stylesheet">
	
	
	<link rel="shortcut icon" href="images/ico/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144"
		href="images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114"
		href="images/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72"
		href="images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed"
		href="images/ico/apple-touch-icon-57-precomposed.png">
	
	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script>
	$("#pageInfo a").on("click", function(e){
	    e.preventDefault();
	    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	    moveForm.attr("action", "/product/getProductList.do");
	    moveForm.submit();
	    
	});
	</script>

</head>
<!--/head-->

<body>
	<header id="header"><!--header-->
        <jsp:include page="/WEB-INF/views/common/gnb.jsp" />
	</header>

	<section>
		<img src="<%=pjName %>/resources/images/home/subbanner_1.png"
			id='subbaner' width="100%" height="auto" alt="" />

		<div class="col-sm-9 padding-right" style="margin: auto;">

			<div class="features_items" style="margin: auto; text-align: center;">
				<!--features_items-->

				<br /> <br />
				<div style="margin: auto;">
					<c:forEach items="${productList}" var="vo">
						<c:if test="${vo.product_stock > 0}">
						<div id="row" style="float: left;"
							style="border-style:none; display:flex; flex-wrap:wrap;">
							<form action="product-detail?product-number=${vo.product_number}" id="listForm"
								method="post"
								style="margin-bottom: 10px; margin-left: 10px; class =form-inline; border-style: none;">
								<div style="margin-left: 120px">
									<input name="product_number" type="hidden"
										value="${vo.product_number}" />
									<input name="product_stock" type="hidden"
										value="${vo.product_stock}" />	
									<table style="margin-left: 10px;">
										<tr>
											<td colspan="2" align="center">
												<a href="product-details.do?product_number=${vo.product_number}"><img src='<%=pjName%>/resources/images/shop/${vo.stored_file_name}' width='300' height='300'></a>	
											</td>
										</tr>
										<tr>
											<td align="center" valign="middle"><input
												name="product_name" type="text" value="${vo.product_name}"
												readonly style="border-style: none; width: 100%; text-align: center; margin-bottom: 1px; margin-top: 3px; font-family: 'Noto Sans KR', 'sans-serif'"  /></td>
										</tr>
										<tr>

											<td align="center"><input name="product_price"
												type="text" value="${vo.product_price}" readonly
												style="border-style: none; text-align: center; font-family: 'Noto Sans KR', 'sans-serif'"  /></td>
										</tr>
									</table>
								</div>
							</form>
						</div>
						</c:if>
							<c:if test="${vo.product_stock <= 0}">
							<div id="row" style="float: left;"
							style="border-style:none; display:flex; flex-wrap:wrap;">
							<form action="product-detail?product-number=${vo.product_number}" id="listForm1"
								method="post"
								style="margin-bottom: 10px; margin-left: 10px; class =form-inline; border-style: none;">
								<div style="margin-left: 120px">
									<input name="product_number" type="hidden"
										value="${vo.product_number}" />
									<table style="margin-left: 10px;">
										<tr>
											<td colspan="2" align="center">
												<a href="#"><img src='<%=pjName%>/resources/images/shop/${vo.stored_file_name}' width='300' height='300' id='soldOutproduct'></a>	
											</td>
										</tr>
										<tr>
											<td align="center" valign="middle"><input
												name="product_name" type="text" value="${vo.product_name}"
												readonly style="border-style: none; width: 100%; text-align: center; margin-bottom: 1px; margin-top: 3px; font-family: 'Noto Sans KR', 'sans-serif'"  /></td>
										</tr>
										<tr>
											<td align="center">
												<span style="color: red; font-weight: bold;">sold out</span>
												</td>
										</tr>
										
									</table>
								</div>
							</form>
						</div>
						</c:if>
					</c:forEach>
				</div>

			</div>
		</div>

	</section>

	<footer id="footer">
        <jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</footer>
	<!--/Footer-->







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