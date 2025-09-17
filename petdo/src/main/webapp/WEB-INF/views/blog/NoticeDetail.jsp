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
    <title>PetDo : 공지사항-상세보기</title>
   <% String pjName="/petdo"; %>
    <link href="<%=pjName %>/resources/blog-css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/prettyPhoto.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/price-range.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/main.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/responsive.css" rel="stylesheet">

  
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
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
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							
							 <div class="panel panel-default">
								<div class="panel-heading">
								   <h4 class="panel-title"><a href="faq.do">FAQ</a></h4>
								</div>
							 </div>
							 <div class="panel panel-default">
								<div class="panel-heading">
								   <h4 class="panel-title"><a href="qna.do">QnA</a></h4>
								</div>
							 </div>
							 <div class="panel panel-default">
								<div class="panel-heading">
								   <h4 class="panel-title"><a href="notice.do">공지사항</a></h4>
								</div>
							 </div>
						  </div><!--/category-productsr-->
						
						<div class="shipping text-center"><!--shipping-->
							<img src="<%=pjName %>/resources/images/home/shipping.jpg" alt="" height="310px" width="200px" />
						</div><!--/shipping-->
					</div>
				</div>
				<div id="col-sm" class="col-sm-8">
					<div class="blog-post-area">
						<div class="single-blog-post">
							<h2>${notice.notify_title }</h2>
							<div class="post-meta">
								<ul>
									<li><i class="fa fa-user"></i> ${notice.notify_writer }</li>
									<li><i class="fa fa-clock-o"></i>${notice.nTime }</li>
									<li><i class="fa fa-calendar"></i>${notice.nDate }</li>
								</ul>
							</div>
							<p>
								${notice.notify_content}
						</div>
					</div><!--/blog-post-area-->
					
				</div>	
			</div>
		</div>
	</section>
	
	<!-- logout Modal -->
    <jsp:include page="/WEB-INF/views/common/logoutModal.jsp" />	

	
	<footer id="footer">
        <jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</footer>
	

  
	<script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
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