<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.javaclass.domain.ProductVO"%>
<%@page import="com.javaclass.domain.PagingVO"%>
<%@page import="com.javaclass.service.ProductServiceImpl"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Petdo</title>
<%
	String pjName = "/petdo";
%>
<%
	ProductVO vo = new ProductVO();
%>
<link href="<%=pjName%>/resources/mCss/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/prettyPhoto.css" rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/price-range.css" rel="stylesheet">
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
</head>
<!--/head-->

<body>
	<header id="header">
        <jsp:include page="/WEB-INF/views/common/gnb.jsp" />
	</header>

	<section>
		<img src="<%=pjName%>/resources/images/home/subbanner_1.png"
			id='subbaner' width="100%" height="auto" alt="" />
		
		<hr style="height: 30px" />

		<div class="col-sm-9 padding-right" style="margin: auto;">

			<div class="features_items" style="margin: auto; text-align: center;">
				<!--features_items-->

				<div class="product-content" style="margin: auto;">
					<c:forEach items="${categoryList}" var="vo">
						<c:if test="${vo.product_stock > 0}">
							<div id="row" style="float: left;"
								style="border-style:none; display:flex; flex-wrap:wrap;">
								<form action="product-detail?product-number=${vo.product_number}" id="listForm"
									method="post"
									class ="form-inline" style="margin-bottom: 10px; border-style: none;">
									<div>
										<input name="product_number" type="hidden"
											value="${vo.product_number}" />
										<input name="product_stock" type="hidden"
											value="${vo.product_stock}" />	
										<table>
											<tr>
												<td colspan="2" align="center">
													<a href="product-details.do?product_number=${vo.product_number}"><img src='<%=pjName%>/resources/images/shop/${vo.stored_file_name}' width='300' height='300'></a>	
												</td>
											</tr>
											<tr>
												<td align="center" valign="middle">
													<input name="product_name" type="text" value="<c:out value='${vo.product_name}' default=''/>"
													readonly style="border-style: none; width: 100%; text-align: center; margin-bottom: 1px; margin-top: 3px; font-family: 'Noto Sans KR', 'sans-serif'"  /></td>
											</tr>
											<tr>
												<td align="center">
													<input name="product_price"
													type="text" value="<c:out value='${vo.product_price}' default=''/>" readonly
													style="border-style: none; text-align: center; font-family: 'Noto Sans KR', 'sans-serif'"  /></td>
											</tr>
										</table>
									</div>
								</form>
							</div>
						</c:if><c:if test="${vo.product_stock <= 0}">
							<div id="row" style="float: left;"
								style="border-style:none; display:flex; flex-wrap:wrap;">
								<form action="product-detail?product-number=${vo.product_number}" id="listForm1"
									method="post"
									style="margin-bottom: 10px; border-style: none;" class ="form-inline" >
									<div>
										<input name="product_number" type="hidden"
											value="${vo.product_number}" />
										<table style="margin-left: 10px;">
											<tr>
												<td colspan="2" align="center">
													<a href="#"><img src='<%=pjName%>/resources/images/shop/${vo.stored_file_name}' width='300' height='300' id='soldOutproduct'></a>	
												</td>
											</tr>
											<tr>
												<td align="center" valign="middle">
													<input name="product_name" type="text" value="<c:out value='${vo.product_name}' default=''/>"
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







	<script src="<%=pjName%>/resources/js/jquery.js"></script>
	<script src="<%=pjName%>/resources/js/price-range.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName %>/resources/js/main.js"></script>
	<script src="<%=pjName %>/resources/js/jquery_1.js"></script>
	<script src="<%=pjName%>/resources/js/search.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="<%=pjName%>/resources/js/search.js"></script>
	<script>
		$(document).ready(function() {
			var listForm = $("#listForm");
			$(".pagination_button a").on("click", function(e) {
				e.preventDefault();
				listForm.find("input[name='pageNum']").val($(this).attr("href"));
				listForm.submit();
			});
		});
	</script>

	
</body>
</html>