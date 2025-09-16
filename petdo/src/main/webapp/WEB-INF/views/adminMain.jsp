<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>PetDo - 관리자 페이지</title>
    <% String pjName="/petdo"; %>

<!-- Custom fonts for this template-->
<link href="<%=pjName %>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="<%=pjName %>/resources/css/sb-admin-2.min-copy.css" rel="stylesheet">
<style>
a:hover {
	text-decoration: none;
}
</style>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="admin.do">
				<div class="sidebar-brand-text mx-3">PetDo Admin</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="main.do"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>User Page</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Shop Items</div>


			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="admin/itemList.do"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-cog"></i> <span>상품 관리</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Utilities:</h6>
						<a class="collapse-item" href="admin/itemList.do">상품 목록</a> <a
							class="collapse-item" href="admin/itemRegister.do">상품 등록</a>
					</div>
				</div></li>
			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="admin/itemCharts.do">
					<i class="fas fa-fw fa-chart-area"></i> <span>상품별 판매통계</span>
			</a></li>

			<li class="nav-item"><a class="nav-link" href="admin/calCharts.do">
					<i class="fas fa-fw fa-chart-area"></i> <span>정산관리</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="admin/member.do">
					<i class="fas fa-fw fa-table"></i> <span>회원관리</span>
			</a></li>
			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Interface</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="admin/faq.do"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>게시판관리</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">홈페이지에 게시된 각종 글 관리</h6>
						<a class="collapse-item" href="admin/faq.do">FAQ 관리</a> <a
							class="collapse-item" href="admin/qna.do">QnA 관리</a> <a
							class="collapse-item" href="admin/notice.do">공지사항 관리</a>
					</div>
				</div></li>




			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="admin/orderList.do">
					<i class="fas fa-fw fa-table"></i> <span>주문내역관리</span>
			</a></li>


			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>


		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li>
							<a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                </a>
						</li>
						
					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
					</div>

					<!-- Content Row -->
					<div class="row">

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<a href="admin/orderList.do">
								<div class="card border-left-primary shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-primary text-uppercase mb-1">
													주문내역</div>
												<div class="h5 mb-0 font-weight-bold text-gray-800">주문내역 탭 바로가기</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-calendar fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<a href="admin/itemCharts.do">
								<div class="card border-left-success shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-success text-uppercase mb-1">
													판매현황</div>
												<div class="h5 mb-0 font-weight-bold text-gray-800">판매현황 차트 바로보기</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>




						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<a href="admin/qna.do">
								<div class="card border-left-warning shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-warning text-uppercase mb-1">
													QnA</div>
												<div class="h5 mb-0 font-weight-bold text-gray-800">QnA
													게시판 바로가기</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-comments fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>


						<div class="col-xl-3 col-md-6 mb-4">
							<a href="admin/calCharts.do">
								<div class="card border-left-success shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-success text-uppercase mb-1">
													정산</div>
												<div class="h5 mb-0 font-weight-bold text-gray-800">월간 정산차트 바로보기</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>

					<!-- Content Row -->

					<div class="row">

						<!-- Area Chart -->

					</div>

					<!-- Content Row -->
					<div class="row">

						<!-- Content Column -->
						<div class="col-lg-6 mb-4">

							<!-- Project Card Example -->
							<div class="card shadow mb-4">
								<a href="admin/orderList.do">
									<div class="card-header py-3">
										<h6 class="m-0 font-weight-bold text-primary">배송현황</h6>
									</div>
									<div class="card-body">
									
									<c:forEach items='${ratio }' var='list'>
									
									<c:choose>
									<c:when test="${list.ORDER_DETAIL_STATUS eq '배송중' }">
										<h4 class="small font-weight-bold">
											상품 준비중 / 배송중<span class="float-right">${list.RATIO}%</span>
										</h4>
										<div class="progress mb-4">
											<div class="progress-bar" role="progressbar"
												style="width: ${list.RATIO}%" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</c:when>
									<c:when test="${list.ORDER_DETAIL_STATUS eq '취소' }">
										<h4 class="small font-weight-bold">
											취소<span class="float-right">${list.RATIO}%</span>
										</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-dark" role="progressbar"
												style="width: ${list.RATIO}%" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</c:when>
									<c:when test="${list.ORDER_DETAIL_STATUS eq '환불' }">
										<h4 class="small font-weight-bold">
											환불<span class="float-right">${list.RATIO}%</span>
										</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: ${list.RATIO}%" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</c:when>
									<c:when test="${list.ORDER_DETAIL_STATUS eq '교환' }">
										<h4 class="small font-weight-bold">
											교환<span class="float-right">${list.RATIO}%</span>
										</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-danger" role="progressbar"
												style="width: ${list.RATIO}%" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</c:when>
									<c:when test="${list.ORDER_DETAIL_STATUS eq '완료' }">
										<h4 class="small font-weight-bold">
											배송 완료<span class="float-right">${list.RATIO}%</span>
										</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-info" role="progressbar"
												style="width: ${list.RATIO}%" aria-valuenow="80" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</c:when>
									</c:choose>
									</c:forEach>
									
										
									</div>
								</a>
							</div>


						</div>
						<div class="col-lg-6 mb-4">

							<!-- Project Card Example -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">상품</h6>
								</div>
								<div class="card-body">
									<a href="admin/itemList.do"> <c:forEach
											items='${ItemRatio }' var='list'>

											<c:choose>
												<c:when test="${list.PRODUCT_STOCK gt 1 }">
													<h4 class="small font-weight-bold">
														진열중
														<span class="float-right">${list.RATIO}%</span>
													</h4>
													<div class="progress mb-4">
														<div class="progress-bar" role="progressbar"
															style="width: ${list.RATIO}%" aria-valuenow="60"
															aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</c:when>
												<c:when test="${list.PRODUCT_STOCK eq 1 }">
													<h4 class="small font-weight-bold ">
														품절 임박 (재고 수 : ${list.PRODUCT_STOCK })
														<span class="float-right">${list.RATIO}%</span>
													</h4>
													<div class="progress mb-4">
														<div class="progress-bar bg-warning" role="progressbar"
															style="width: ${list.RATIO}%" aria-valuenow="60"
															aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</c:when>
												<c:when test="${list.PRODUCT_STOCK lt 1}">
													<h4 class="small font-weight-bold">
														품절<span class="float-right">${list.RATIO}%</span>
													</h4>
													<div class="progress mb-4">
														<div class="progress-bar bg-danger" role="progressbar"
															style="width: ${list.RATIO}%" aria-valuenow="20"
															aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</c:when>
											</c:choose>
										</c:forEach>
									</a>
								</div>
							</div>


						</div>

					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; PetDo 2021</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body" >로그아웃 하시겠습니까?</div>
				<div class="modal-footer" style="height:75px;">
					<button class="btn btn-secondary" type="button" style="border-radius: 10px;"
						data-dismiss="modal">취소</button>
					<a class="btn btn-primary" href="logOut.do" style="border-radius: 10px;">로그아웃</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="<%=pjName %>/resources/vendor/jquery/jquery.min.js"></script>
	<script src="<%=pjName %>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="<%=pjName %>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="<%=pjName %>/resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="<%=pjName %>/resources/vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="<%=pjName %>/resources/js/demo/chart-area-demo.js"></script>
	<script src="<%=pjName %>/resources/js/demo/chart-pie-demo.js"></script>
	
	<!-- font awesome CDN -->
	<script src="https://kit.fontawesome.com/3364ed6976.js" crossorigin="anonymous"></script>

</body>

</html>
