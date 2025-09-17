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
    <title>PetDo : 공지사항</title>
     <% String pjName="/petdo"; %>
    <link href="<%=pjName %>/resources/blog-css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/prettyPhoto.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/price-range.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/main.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/responsive.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/ico/favicon.ico">
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
			<div class="row" style="margin:0px auto;">
				<div class="col-sm-12" id="col-sm-12" style="text-align:center;">
					<div class="blog-post-area-list"  style="display: inline;">
						<h2 class="title text-center" style="font-size: 40px; margin-bottom: 70px;" >NOTICE</h2>
						<table id="qnaTable" id="qnaTable">
							<thead>
								<tr>
									<th style="width:10%;">번호</th>
									<th style="width:15%;">작성자</th>
									<th style="width:55%;">제목</th>
									<th style="width:20%;">작성일자</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${nList }" var="vo">
									<tr>
										<td><a href="noticeDetail.do?notify_seq=${vo.notify_seq }">${vo.notify_seq }</a></td>
										<td><a href="noticeDetail.do?notify_seq=${vo.notify_seq }">${vo.notify_writer }</a></td>
										<td><a href="noticeDetail.do?notify_seq=${vo.notify_seq }">${vo.notify_title }</a></td>
										<td><a href="noticeDetail.do?notify_seq=${vo.notify_seq }">${vo.nDate }</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="pagination-area">
							
						</div>
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