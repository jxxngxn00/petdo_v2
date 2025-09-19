<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="kor">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PetDo : QnA</title>
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
			<div class="row" style="margin:0px auto;">
				<div class="col-sm-12" style="text-align:center;">
					<div class="blog-post-area-list" style="display: inline;">
						<h2 class="title text-center" style="font-size: 40px; margin-bottom: 30px;">QnA</h2><br/>
						<div style="text-align:right; width:80%; margin:10px;">
							<a href="qnaRegist.do">
								<i class="fa fa-plus-circle" aria-hidden="true">새 질문 추가</i>
							</a>
						</div>
						<table id="qnaTable">
							<thead>
								<tr>
									<th style="width:10%;">번호</th>
									<th style="width:15%;">작성자</th>
									<th style="width:40%;">제목</th>
									<th style="width:15%;">작성일자</th>
									<th style="width:10%;">수정</th>
									<th style="width:10%;">삭제</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items ="${qnaList }" var="vo">
									<tr>
										<td><a href="qnaDetail.do?qna_seq=${vo.qna_seq}">${vo.qna_seq}</a></td>
										<td><a href="qnaDetail.do?qna_seq=${vo.qna_seq}">${vo.qna_writer}</a></td>
										<td><a href="qnaDetail.do?qna_seq=${vo.qna_seq}">${vo.qna_title}</a></td>
										<td><a href="qnaDetail.do?qna_seq=${vo.qna_seq}">${vo.qDate}</a></td>
										<!-- 작성자 본인일 경우 수정이 가능함 -->
										<!--  관리자이거나 작성자 본인일 경우 삭제가 가능함 -->
										<c:choose>
											<c:when test="${vo.qna_writer eq sessionScope.login }">
											<td><a href="qnaUpdate.do?qna_seq=${vo.qna_seq}"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
											<td>
												<a href="deleteQna.do?qna_seq=${vo.qna_seq }"><i class="fa fa-trash" aria-hidden="true"></i></a>
											</td>
											</c:when>
											<c:when test="${'admin' eq sessionScope.login }">
											<td>${ sessionScope.login }</td>
											<td>
												<a href="deleteQna.do?qna_seq=${vo.qna_seq }"><i class="fa fa-trash" aria-hidden="true"></i></a>
											</td>
                                            </c:when>
											<c:otherwise>
											<td></td>
											<td>
												<a href="#" id="notDelete"><i class="fa fa-trash" aria-hidden="true"></i></a>
											</td>
											</c:otherwise>
										</c:choose>
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
	<script src="<%=pjName%>/resources/js/search.js"></script>
	<script type="text/javascript">
    $(function(){
    	$("#notDelete").click(function(){
			alert("본인이 작성한 글만 삭제할 수 있습니다.");
		});
		
    	$("#insertQna").click(function(){		//QnA 새글 등록 실행
    		$("form#insertQnaBtn").submit();
    	})
    })
    </script>
</body>
</html>