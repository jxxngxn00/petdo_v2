<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
			<div class="modal-footer">
				<button class="btn btn-secondary" type="button"
					data-dismiss="modal" style="border-radius: 10px;">취소</button>
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/logOut.do"
					style="border-radius: 10px; margin-top: 0px">로그아웃</a>
			</div>
		</div>
	</div>
</div>	
<!-- /logout Modal -->
