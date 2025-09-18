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
<title>PetDo : QnA - 상세보기</title>
<%
	String pjName = "/petdo";
%>
<link href="<%=pjName%>/resources/blog-css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/prettyPhoto.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/price-range.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/animate.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/main.css" rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/responsive.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/custom.css" rel="stylesheet">
<style type="text/css">
	.qnaInputFrm input, textarea{
		width:100%;
		padding:10px;
		height:100%;
		border:none;
		border-radius: 10px;
	}
	.qnaInputFrm input:focus,
	.qnaInputFrm textarea:focus
	{
		border:none;
		outline:none;
		background-color: #e5e5e5;
	}
	
</style>

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
</head>
<!--/head-->

<body>
	<!--header-->
	<header id="header">
    	<jsp:include page="/WEB-INF/views/common/gnb.jsp" />
	</header>


	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<div class="shipping text-center">
							<!--shipping-->
							<img src="<%=pjName%>/resources/images/home/shipping.jpg" alt="" style="width: 100%;"/>
						</div>
						<!--/shipping-->
					</div>
				</div>
				<div class="col-sm-8">
					<div class="blog-post-area">
						<div>
						<p class="title text-center" style="text-transform: capitalize; font-family: 'Noto Sans KR', sans-serif; font-size: 27pt; font-weight: bolder;">
								QNA 질문 등록</p>
						</div>
						<div class="single-blog-post">
							<form action="insertQna.do" method="post" style="height: 500px;"
								id="insertQnaFrm">
								<table class="qnaInputFrm" id="qnaTable">
									<tr style="height:30px;">
										<th scope="row">글 제목</th>
										<td><input type="text" name="qna_title" /></td>
									</tr>
									<tr style="height:30px;">
										<th scope="row">작성자</th>
										<td><input type="text" name="qna_writer"
											value=<%=session.getAttribute("login")%> readonly></td>
									</tr>
									<tr>
										<th scope="row">글 내용</th>
										<td><textarea name="qna_content"></textarea></td>
									</tr>
									<tr>
										<td colspan="2" style="text-align: right;">
											<button id="insertQna">
												<i class="fa fa-plus-circle" aria-hidden="true">질문 추가</i>
											</button>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<!--/blog-post-area-->

				</div>
			</div>
		</div>
	</section>
	<!-- logout Modal -->
    <jsp:include page="/WEB-INF/views/common/logoutModal.jsp" />	
	<!-- /logout Modal -->
	
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
	<script src="<%=pjName%>/resources/js/search.js"></script>
</body>
</html>