<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" style="background-color:#FDDCDF">

<head>
    <% String pjName="/petdo"; %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Petdo - Sign up</title>
    <link href="<%=pjName %>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link href="<%=pjName %>/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/css/custom.css" rel="stylesheet">
    <link rel="shortcut icon"
		href="<%=pjName%>/resources/images/ico/favicon.ico">

</head>

<body class="bg-gradient-primary" style="color:#FDDCDF">

    <div class="container" style="background-color:#FDDCDF">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">회원가입 </h1>
                            </div>
                            <!-- 회원가입 폼 -->
                            <form class="user" action="userInsert.do" method="post">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0 inputId">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName" required
                                            placeholder="아이디" name="user_id" />
                                        <span><button type="button" class="btn btn-primary idCheckBtn">중복확인</button></span>
                                        <span id="idCheckResult"></span>
                                    </div>
                                  
                                    <div class="col-sm-8 mt-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleLastName"
                                            placeholder="이름" name="user_name" required>
                                    </div>
                                    
                                </div>
                                <div class="form-group" >
                                    <input type="email" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="이메일" name="user_email">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="비밀번호" name="user_pwd" required>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="비밀번호 확인" required>
                                    </div>
                                 </div>
                                <div class="form-group row">
                                   <div class="col-sm-6 mb-3 mb-sm-0" class="form-control form-control-user">
                                    <input type="tel" class="form-control form-control-user" id="examplecellphone"
                                        placeholder="휴대전화" name="user_phone">
                              		</div>
                              		</div>
                                  <div class="col-sm-15 mt-3 mb-3" >
                                    <input type="text" class="form-control form-control-user" id="exampleaddress"
                                        placeholder="우편번호" name="user_address1">
                                </div>
                                
                                <button type="submit" class="btn btn-primary btn-user btn-block" id="joinBtn" disabled>
                                    계정 생성하기
                                </button>
                              <hr>
                              <!--  추후에 개발 예정
                            <div class="text-center">
                                <a class="small" href="forgot-password.html">비밀번호 찾기?</a>
                            </div> -->
                            <div class="text-center">
                                <a class="small" href="loginOpen.do">이미 회원이신가요? 로그인</a>
                            </div>
                            </form>
                        </div>
                    </div>
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
	<script src="<%=pjName %>/resources/js/login-custom.js"></script>

</body>

</html>