<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>\
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PetDo : FAQ - 상세보기</title>
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
			<div class="row">
			
				<div class="col-sm-9">
					<div class="blog-post-area">
						<div class="single-blog-post">
							<h3 style="font-size: 28px;">${faq.faq_title}</h3>
							<hr/>
							<div class="post-meta">
								<ul>
									<li><i class="fa-solid fa-dog"></i>${faq.faq_writer}</li>
									<li><i class="fa fa-clock-o"></i>${faq.faq_date}</li>
								</ul>
							</div>
									<img src="<%=pjName %>/resources/images/faq/${faq.faq_mainRealName}" width='100%'>

							
						</div>
					</div><!--/blog-post-area-->

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