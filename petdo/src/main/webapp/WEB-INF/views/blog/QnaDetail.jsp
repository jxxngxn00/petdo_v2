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
						<div class="single-blog-post">
							<h3>${qna.qna_title }</h3>
							<div class="post-meta">
								<ul>
									<li><i class="fa fa-user"></i> ${qna.qna_writer}</li>
									<li><i class="fa fa-clock-o"></i> ${qna.qTime}</li>
									<li><i class="fa fa-calendar"></i> ${qna.qDate}</li>
								</ul>
							</div>
							<div class="post-content">${qna.qna_content}</div>
						</div>
						<!--/blog-post-area-->


						<div id="comment" class="media commnets">
							<a class="pull-left" href="#" style="width:100px;"> <img class="media-object" 
								style="width:100%; margin-left:10px;"
								src="<%=pjName%>/resources/images/blog/paw.png" alt="">
							</a>
							<div class="media-body">
								<c:if test="${qna.answer_title ne null}">
									<h4 class="media-heading" style="font-size:1.6em">PetDo 운영자</h4>
									<p style="font-size:1.1em">${qna.answer_content }</p>
								</c:if>
								<c:if test="${qna.answer_title eq null}">
									<h4 class="media-heading" style="font-size:1.3em">아직 답변이 달리지 않았습니다.</h4>
								</c:if>
							</div>
						</div>
						<!--Comments-->

						<div class="response-area">
							<h2>댓글</h2>
							<ul class="media-list"  id="replyList">
								
							</ul>
						</div>
						<!--/Response-area-->
						<div class="replay-box">
							<div class="row">
									<input type="hidden" name="replyer"
										value="${sessionScope.login}" /> 
									<input type="hidden"
										name="bno" value="${qna.qna_seq}" />
									<div class="col-sm-12">
										<div class="text-area" style="margin-top:0px;">
											<div class="blank-arrow">
												<label>Leave comment</label>
											</div>
											<span>*</span>
											<textarea name="reply" rows="11"></textarea>
											<button class="btn btn-primary" id="submitBtn">comment</button>
										</div>
									</div>
							</div>
						</div>
						<!--/Repaly Box-->
					</div>
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
	<script src="<%=pjName%>/resources/js/reply.js"></script>
	<script src="<%=pjName%>/resources/js/search.js"></script>
</body>
</html>