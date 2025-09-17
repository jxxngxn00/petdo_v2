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
<title>회원정보 수정</title>
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
	

<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
</head>
<!--/head-->




<body>
	<header id="header">
    	<jsp:include page="/WEB-INF/views/common/gnb.jsp" />
	</header>

	<div id="contact-page" class="container">
		<div class="bg">
			<div class="row">
				<div class="col-sm-12">
					<br /> <br /> <br />
					<h2 class="title text-center"
						style="margin-bottom: 80px; font-size: 45px; font-family: 'Noto Sans KR', sans-serif;">Modify</h2>

				</div>
			</div>

			<div class="col-sm-8">
				<div class="contact-form">
					<hr />
					<form id="infoFrm" method="post"> <!-- action 써주기 -->
						<div class="form-group col-md-12">
							<p id="customerid"
								style="float: left; margin-top: 6px; font-family: 'Noto Sans KR', sans-serif;">아이디</p>
							<input type="text" readonly name="user_id" class="form-control"  value="${userInfo.user_id }"
								required="required" style="width: 40%; margin-left: 115px;">
						</div>
						<div class="form-group col-md-12">
							<p id="customerEmail"
								style="float: left; margin-top: 6px; font-family: 'Noto Sans KR', sans-serif;">이름</p>
							<input type="text" name="user_name" class="form-control"  value="${userInfo.user_name }"
								required="required" style="width: 40%; margin-left: 115px;">
						</div>
						<div class="form-group col-md-12">
							<p id="customerid"
								style="float: left; margin-top: 6px; font-family: 'Noto Sans KR', sans-serif;">비밀번호</p>
							<input type="password" name="user_pwd" class="form-control"  value="${userInfo.user_pwd }"
								required="required" style="width: 40%; margin-left: 115px;">
						</div>
						<div class="form-group col-md-12">
							<p id="customerEmail"
								style="float: left; font-family: 'Noto Sans KR', sans-serif; margin-top: 6px">E-Mail</p>
							<input type="text" name="user_email" class="form-control"  value="${userInfo.user_email }"
								required="required" style="width: 83%; margin-left: 115px;">
						</div>
						<div class="form-group col-md-12">
							<p id="customerEmail"
								style="float: left; font-family: 'Noto Sans KR', sans-serif; margin-top: 6px;">전화</p>
							<input type="text" name="user_phone" class="form-control"  value="${userInfo.user_phone }"
								required="required" style="width: 40%; margin-left: 115px;">
						</div>
						<div class="form-group col-md-12" style="display: f;">
							<p id="customerEmail"
								style="float: left; font-family: 'Noto Sans KR', sans-serif; margin-top: 6px;">주소</p>
							<div>
								<input type="text" class="form-control" name="user_address1"
									required="required"  value="${userInfo.user_address1 }"
									style="width: 83%; margin-left: 115px; margin-top: 5px;">
							</div>
							<hr />
						</div>

						<div class="form-group col-md-12">
							<button name="submit" id="delete"
								class="btn btn-delete pull-right"
								style="margin-right: 12px; font-family: 'Noto Sans KR', sans-serif">회원탈퇴</button>
							<button name="submit" id="modify"
								class="btn btn-modify pull-right"
								style="margin-left: 12px; margin-bottom: 60px; font-family: 'Noto Sans KR', sans-serif">
								수정</button>
						</div>

					</form>

				</div>
			</div>

			<div id="col-sm-4">
				<div class="contact-info">
					<p class="title text-center" id="fonttitle"
						style="text-transform: capitalize; font-family: 'Noto Sans KR', sans-serif;">My
						Account</p>
				</div>
				<h3
					style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 22px; font-weight: bold; font-size: 18px;">나의
					정보</h3>
				<ul>
					<li style="margin-left: -38px;"><a href="account.do?user_id=${userInfo.user_id }"
						style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">회원
							정보 조회</a><br />
					<br /> <a href="accountModify.do?user_id=${userInfo.user_id }"
						style="font-family: 'Noto Sans KR', sans-serif;">회원 정보 수정</a><br />
					<br /> <a href="#" data-toggle="modal" data-target="#logoutModalCenter"
						style="font-family: 'Noto Sans KR', sans-serif;">로그아웃</a><br />
					<br />
					<br /></li>

				</ul>
				<div class="subtitle">
					<h3
						style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 22px; font-weight: bold; font-size: 18px;">주문
						정보</h3>
				</div>
				<ul>
					<li style="margin-left: -38px;"><a href="mOrder.do?user_id=${userInfo.user_id }"
						style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">주문
							내역</a><br />
					<br /> <a href="../cart/cartList.do"
						style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">장바구니</a><br />
					</li>
				</ul>

			</div>

		</div>
	</div>
	<!--/#contact-page-->

<!-- logout Modal -->
	<div class="modal fade" id="logoutModalCenter" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
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
					<a class="btn btn-primary" href="../logOut.do" style="border-radius: 10px; margin-top: 0px">로그아웃</a>
				</div>
			</div>
		</div>
	</div>
	<!-- /logout Modal -->

	<!-- delete User Modal -->
        <section class="modal modal-section type-confirm">
            <div class="enroll_box">
                <p class="menu_msg"></p>
            </div>
            <div class="enroll_btn">
                <button class="btn pink_btn btn_ok">확인</button>
                <button class="btn gray_btn modal_close">취소</button>
            </div>
        </section>
        <!-- delete User Modal -->

	<footer id="footer">
        <jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</footer>
	<!--/Footer-->


	<script src="<%=pjName%>/resources/js/jquery.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
	<script src="<%=pjName%>/resources/js/myPageCustom.js" type="text/javascript"></script>
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