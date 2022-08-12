
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- jQuery 선언부 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="INSPIRO" />
<meta name="description" content="Themeforest Template Polo">
<!-- Document title -->
<title>nav</title>
<!-- Stylesheets & Fonts -->
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pension Reservation</title>

</head>
<body class="p-r-0">
 <!-- Body Inner -->
    <div class="body-inner">
		<div id="topbar" class="d-none d-xl-block d-lg-block topbar-fullwidth p-t-10 no-border ">
	        	<div class="container">
	                <div class="row">
	                    <div class="col-md-12">
	                        <ul class="top-menu">
                          
                              <!-- 유섭 시작 -->
                              <!-- 눈속임용 태그 -->
                              <li><span id="click" style="color: white;">클릭</li>

                              <!-- 로그인 시작 -->
                              <!--Modal trigger button-->
                              <li><a href="#" data-target="#login" data-toggle="modal">로그인</a></li>
                              <!--End: Modal trigger button-->

                              <!-- 로그인 끝 -->

                              <!-- 회원가입 -->
                              <li><a href="#" data-target="#user" data-toggle="modal">회원가입</a></li>

                              <!-- 회원가입 끝 -->

                              <!-- 유섭 끝 -->
                              
	                            <li><a href="#"><img src="/images/naver_logo.png"></a></li>
	                            <li><a href="#"><img src="/images/in_logo.png"></a></li>
	                            <li><a href="#"><img src="/images/you_logo.png"></a></li>
	                        </ul>
	                    </div>
	                </div>
	             </div>
	        </div>
	        <!-- end: Topbar -->
	        <!-- Header -->
	       <header id="header" data-fullwidth="true" class="header-disable-fixed">
	            <div class="header-inner">
	             <div class="container">
	                    <!--Logo-->
	                    <div class="row">
		                    <div id="logo" class="col-lg-2">
		                        <a href="index.html">
		                            <img src="images/logo.png" class="logo-default">
		                            <img src="images/logo-sticky.png" class="logo-sticky">
		                        </a>
		                    </div>
		                    <div class="col-lg-10 p-t-10">
		                    <hr color="#13b383" width="98.8%">
		                    </div>
	                    </div>
	                    <!--End: Logo-->
	                    <!-- Search -->
	                    <div id="search"><a id="btn-search-close" class="btn-search-close" aria-label="Close search form"><i class="icon-x"></i></a>
	                        <form class="search-form" action="search-results-page.html" method="get">
	                            <input class="form-control" name="q" type="search" placeholder="Type & Search..." />
	                            <span class="text-muted">Start typing / press "Enter" or "ESC" to close</span>
	                        </form>
	                    </div>
	                    <!-- end: search -->
	                  
	                    <!--Navigation Resposnive Trigger-->
	                    <div id="mainMenu-trigger">
	                        <a class="lines-button x"><span class="lines"></span></a>
	                    </div>
	                    <!--end: Navigation Resposnive Trigger-->
	                    <!--Navigation-->
	                    <div id="mainMenu">
	                        <div class="container">
	                            <nav class="p-b-40">
	                                <ul>
	                                    <li><a href="section1">런드리고</a></li>
	                                    <li><a href="index.html">월정액</a></li>
	                                    <li><a href="index.html">수거신청</a></li>
	                                    <li><a href="index.html">고객센터</a></li>
	                                </ul>
	                            </nav> 
	                        </div>
	                    </div>
	              </div>
	           </div>
           </header>
        <!-- end: header -->
        
        <!-- 로그인 Modal -->
		<div class="modal fade" id="login" tabindex="-1" role="modal"
			aria-labelledby="modal-label" aria-hidden="true"
			style="display: none;">
			<div class="modal-dialog" style="top: 25%">
				<div class="modal-content">
					<div class="modal-header text-center">
						<button aria-hidden="true" data-dismiss="modal" class="close" id="login_close"
							type="button">×</button>
					</div>
					<div class="widget widget-form p-cb">
						<h2 style="text-align: center; font-weight: bold; margin-bottom: 30px;">로그인</h2>
						<form action="" method="post" name="login">
							<div class="form-group mb-3">
								<input type="email" name="email" class="form-control" id="login_email"
									placeholder="이메일">
							</div>
							<div class="form-group mb-3">
								<input type="password" name="password" id="login_password"
									class="form-control" placeholder="비밀번호">
							</div>
							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-block">로그인</button>
							</div>
							<div class="col-md-12 mb-3">
								<p class="text-center">
									<a href="#" class="btn btn-googleplus" type="submit"><i
										class="fab fa-google mr-"></i> 구글로 로그인</a>
								</p>
							</div>
							<div class="form-group mb-0">
								<p class="text-center">
									계정이 없으신가요? <a href="#" data-target="#user" data-toggle="modal" onclick="hideLogin()">가입하기</a>
								</p>
							</div>
						</form>
					</div>
				</div>
				
			</div>
		</div>

		<!-- 회원가입 Modal -->
		<div class="modal fade" id="user" tabindex="-1" role="modal"
			aria-labelledby="modal-label" aria-hidden="true"
			style="display: none;">
			<div class="modal-dialog" style="top: 15%">
				
				<div class="modal-content">
					<div class="modal-header text-center">
						<button aria-hidden="true" data-dismiss="modal" class="close" id="sign_close"
							type="button">×</button>
					</div>
					<div class="widget widget-form p-cb">
						<div style="text-align: center;">
							<img src="images/logo.png" class="logo-default">
						</div>

						<div style="text-align: center; margin-bottom: 30px;">
							<h4>우리집 모바일 세탁소</h4>
						</div>
						
						<h2 style="text-align: center; font-weight: bold; margin-bottom: 30px;">회원가입</h2>

						<form action="" method="post" name="signUp">
							<div class="form-group mb-3">
								<input type="text" name="name" class="form-control" id="sign_name"
									placeholder="이름">
							</div>
							<div class="form-group mb-3">
								<input type="email" name="email" class="form-control" id="sign_email"
									placeholder="이메일">
							</div>
							<div class="form-group mb-3">
								<input type="password" name="password" id="sign_password"
									class="form-control" placeholder="비밀번호">
							</div>
							<div class="form-group mb-3">
								<input type="password" name="password" id="sign_password_check"
									class="form-control" placeholder="비밀번호 확인">
							</div>
							<div class="form-group mb-3">
								<input type="number" name="phone" class="form-control"
									id="sign_phone" placeholder="전화번호(숫자만)">
							</div>

							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-block">회원가입</button>
							</div>
						</form>
					</div>
				</div>
				
			</div>
		</div>


		<!-- end: Modal -->

        
    </div>
   
    <!-- end: Body Inner -->
    <!-- Scroll top -->
    <a id="scrollTop"><i class="icon-chevron-up"></i><i class="icon-chevron-up"></i></a>
    <!--Plugins-->
    
  <script>
		function hideLogin() {
			$("#login_close").trigger("click");
		}
	</script>
   
</body>
</html>