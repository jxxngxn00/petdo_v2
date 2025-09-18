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
    <title>PetDo : FAQ</title>
    <% String pjName="/petdo"; %>
    <link href="<%=pjName %>/resources/blog-css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/prettyPhoto.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/price-range.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/main.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/responsive.css" rel="stylesheet">
    <link rel="shortcut icon" href="<%=pjName %>/resources/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=pjName %>/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=pjName %>/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=pjName %>/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=pjName %>/resources/images/ico/apple-touch-icon-57-precomposed.png">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
</head><!--/head-->
<body>
	<header id="header"><!--header-->
       	<jsp:include page="/WEB-INF/views/common/gnb.jsp" />
	</header>
	
	<section>
		<div class="container">
			<div class="row" >
			<h2 class="title text-center" style="font-size: 40px">FAQ</h2>
				<div class="col-sm-12" style="float: left; margin-left: 30px">
					<div class="blog-post-area-list" id="post-meta" style="float: left;  width: 100%">
					<c:forEach items ="${faqList }" var="vo">
						<div class="single-blog-post-list" style="float: left; color: black; margin-right: 70px;">
							<h3 style="font-size: 20px; color: black;" id="faqtitle"><b><a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}">${vo.faq_title}</a></b></h3>
							<div class="post-meta" style="float: center; text-align: center; margin-left: 115px;">
								<ul>
									<li><a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}">${vo.faq_tag1}</a></li>
									<li><a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}">${vo.faq_tag2}</a></li>
									<li><a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}">${vo.faq_tag3}</a></li>
								</ul>
								
							</div>
							<a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}"><img src="<%=pjName %>/resources/images/faqsub/${vo.faq_realname}" width="100%" height="auto"></a>
							<p style="font-size: 15px;"><a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}">${vo.faq_writer}</a></p>
							<a id="clickbtn" class="btn btn-primary" href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}" style="float: center; text-align: center;">Click</a>
						</div>
		 </c:forEach>		
						
					
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

  
    <script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
	<script src="<%=pjName%>/resources/js/search.js"></script>
</body>
</html>