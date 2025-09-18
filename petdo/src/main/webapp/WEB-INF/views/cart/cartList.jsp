<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String[] product = request.getParameterValues("list");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>장바구니</title>
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
	//리스트페이지로 이동
	$("#btnList").click(function(){
		location.href="cart/cartList.do";
	});
});
</script>

<body>
	<header id="header">
        <jsp:include page="/WEB-INF/views/common/gnb.jsp" />
	</header>

	<section id="cart_items">
	</section>
	<h2 style="text-align:center; margin-bottom: 20px; font-weight: bold; vertical-align: top; font-size: 30px; color: #369;">장바구니 내역</h2>
	<div class="col-sm-12" style="margin: auto;">

		<div class="table-responsive cart_info" style="text-align: center;">

			
			<table class="table table-condensed"
				style="width: 1000px; margin: auto;">
				
				<thead>
					<tr class="cart_menu">
						<th class="image" style="width: 150px; text-align: center">상품사진
						</th>
						<th class="productname" style="width: 200px; text-align: center;">상품이름
						</th>
						<th class="price" style="width: 40px; text-align: center;">가격
						</th>
						<th class="quantity" style="width: 40px; text-align: center;">수량
						</th>
						<th class="total" style="width: 70px; text-align: center;">총가격
						</th>
						<th class="delete" style="width: 5px; text-align: center;">
						</th>
						<th class="modify" style="width: 5px; text-align: center;">
						</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="cart" items="${cartList}" varStatus="i">
			
					<input type="hidden" name=cart_number" value="${cart.cart_number}" />
					<input type="hidden" name= "product_number"  value="${cart.product_number}"/>
					<input type="hidden" name="product-count" value="${cart.product_count}"/>
					<input type="hidden" name= "product_price" readonly pattern="###,###,###" value="${cart.product_price}"/>
					<input type="hidden" name="product_count" value="${cart.product_number}" />
					<input type="hidden" name="product_name" value="${cart.product_name}" />
					<input type="hidden" readonly name="totalMoney" value="${cart.product_price*cart.product_count}" />
					<input type="hidden" name="user_id" value="${user_id}" />
				<form id="submit" method = "post"  action="modifyCart.do?cart_number=${cart.cart_number}">
							<tr>
								<td><img src='<%=pjName%>/resources/images/shop/${cart.stored_file_name}'  name="stored_file_name" width="160px" height="auto"></td>

								<td style="width: 70px; border-style: none; background-color: #f5f5f5; text-align: left;">${cart.product_name}</td>
								<td style="width: 70px; border-style: none;"><input  type="text" name= "product_price" readonly pattern="###,###,###" value="${cart.product_price}" 
																					style="width: 70px; border-style: none; background-color: #f5f5f5; text-align: right;"/>원</td>
								<td style="width: 70px; border-style: none;"><input type="number" name="product_count" value="${cart.product_count}" 
																					style="width: 70px; border-style: none; background-color: #f5f5f5; text-align: right;"/>개</td>
								<td style="width: 70px; border-style: none;"><input type="text" readonly name="product_sum" value="${cart.product_price*cart.product_count}" 
																					style="width: 70px; border-style: none; background-color: #f5f5f5; text-align: right;" />원</td>
								<td style="width: 5px; border-style: none;"><a href ="deleteCart.do?cart_number=${cart.cart_number}"><i class="fa fa-trash" aria-hidden="true" style="color:black"></i></a></td>		
								<td style="width: 5px; height:10px; border-style: none; margin:auto;"><button type="submit" id="btnUpdate" 
								style=" width:5px; background-color: #f5f5f5; "><i class="fas fa-edit" style="color:black; vertical-align:center;"></i></button></td>				
							</tr>
						</form>	
						
					</c:forEach>
				
				</tbody>
					
			</table>
			
		</div>


		<div class="total_area" id="tableArea" >
			<table class="type09" style="margin: auto; margin-top:30px;">
				<thead>
					<tr>
						<th scope="col" colspan='2'>결제할 상품</th>
						<c:forEach var="cart" items="${cartList}" varStatus="i">
						 <input id= "id1" 			type="hidden" name="user_id"  value="${cart.user_id}"/>
						 <input id= "pnumber1" 		type="hidden" name="product_number"  value="${cart.product_number}" />
						 <input id ="cnumber1" 		type="hidden" name="cart_number" value="${cart.cart_number}"  />
						 <input id="pname" 			type="hidden" name="product_name" value="${cart.product_name}" />
						 <input id="count1" 		type="hidden" name="product_count" value="${cart.product_count}" />
						 <input id="price1" 		type="hidden" name="product_price" value="${cart.product_price}" />
						 <input id="sum1" 			type="hidden" name="product_sum" value="${cart.product_price*cart.product_count}" />
						 <input id="totalMoney1" 	type="hidden" name="totalMoney" value="${totalMoney}"  />
						 </c:forEach>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">상품 금액</th>
						<td style="text-align: right;"><input type="text" readonly name="product_sum" style="border-style: none; text-align: right; background-color: #f5f5f5;" value="${totalMoney}" />원</td>
					</tr>
					<tr>
						<th scope="row" >배송비</th>
						<td style="text-align: right;">0원</td>
					</tr>
					<tr>
						<th scope="row" >결제 금액</th>
						<td style="text-align: right;"><input type="hidden" name="totalMoney" value="${totalMoney}">${totalMoney}원</td>
					</tr>
				</tbody>
			</table>
			<a class="btn btn-default check_out" id="submit" href="../pay/checkout.do" style="background-color: #FF9933; color:white;  margin-bottom:30px;">결제하기</a>
		</div>
	</div>

	<div class="underline">
		<div class="container">
			<div class="row">
				<i class="fa fa-love"></i>
			</div>
		</div>
	</div>

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
				<!-- 버튼부분 -->
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
        <jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</footer>
	<!--/Footer-->




	<script src="<%=pjName%>/resources/js/pay_jquery.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/price-range.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
	<script src="<%=pjName%>/resources/js/search.js"></script>
</body>
</html>