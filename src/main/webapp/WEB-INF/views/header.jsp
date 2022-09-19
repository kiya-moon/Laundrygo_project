
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.net.URLDecoder"%>
<%--<%@ page session="false" %>--%>
<%--<c:set var="loginId" value="${pageContext.request.getSession(false)==null ? '' : pageContext.request.sesson.getAttribute('email')}"/>--%>
<%--<c:set var="loginOut" value="${loginId=='' ? '로그인' : 'ID='+=loginId}"/>--%>

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
<link href="${pageContext.request.contextPath }/css/custom_ys.css"
	type="text/css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pension Reservation</title>

</head>
<body class="p-r-0">
	<%
		String login_ch = (String)session.getAttribute("email");
		if (login_ch!=null) {
	%>
	<script>
		$(function(){										// 로그인 버튼 없어짐, 로그아웃, 마이페이지 버튼 생성
			document.getElementById('login_btn').style.display = "none";
			document.getElementById('logout_btn').style.display = "block";
			document.getElementById('mypage_btn').style.display = "block";
		});

	</script>
	<% } %>

 <!-- Body Inner -->
    <div class="body-inner">

		<div id="topbar" class="d-xl-block d-lg-block topbar-fullwidth p-t-10 no-border ">
	        	<div class="container">
	                <div class="row">
	                    <div class="col-md-12">
	                        <ul class="top-menu">
                          
                              <!-- 유섭 시작 -->

                              <!-- 로그인 시작 -->
                              <!--Modal trigger button-->
                              <li><a href="#" data-target="#login" data-toggle="modal" onclick="resetLogin()" id="login_btn">로그인</a></li>
                              <li><a href="<c:url value="/logout"/>" id="logout_btn" style="display:none;">로그아웃</a></li>
                              <li><a href="${pageContext.request.contextPath }/mypage" id="mypage_btn" style="display:none;">마이페이지</a></li>
                              <!--End: Modal trigger button-->

                              <!-- 로그인 끝 -->

                              <!-- 회원가입 -->
                              <li><a href="#" data-target="#user" data-toggle="modal" onclick="resetSignUp()" id="join_btn">회원가입</a></li>

                              <!-- 회원가입 끝 -->

                              <!-- 유섭 끝 -->
                              
	                            <li><a href="https://blog.naver.com/laundrygo" target="_blank"><img src="images/naver_logo.png"></a></li>
	                            <li><a href="https://www.instagram.com/Laundrygo.life/" target="_blank"><img src="images/in_logo.png"></a></li>
	                            <li><a href="https://www.youtube.com/channel/UCi9dhmANTexQguWXHBgwwSg" target="_blank"><img src="images/you_logo.png"></a></li>
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
		                        <a href="${pageContext.request.contextPath }/">
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
	                                    <li><a href="${pageContext.request.contextPath }/">런드리고</a></li>
	                                    <li><a href="${pageContext.request.contextPath }/monthly">월정액</a></li>
	                                    <li><a href="${pageContext.request.contextPath }/pickup">수거신청</a></li>
	                                    <li><a href="${pageContext.request.contextPath }/cs">고객센터</a></li>
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
			style="display: none;" data-backdrop="static">
			<div class="modal-dialog" style="top: 25%">
				<div class="modal-content">
					<!-- <div class="modal-header text-center">
						<button aria-hidden="true" data-dismiss="modal" class="close" id="login_close"
							type="button">×</button>
					</div> -->
					<div class="widget-form m-0 p-cb" >
						<button aria-hidden="true" data-dismiss="modal" class="close" id="login_close"
							type="button">×</button>
						<h2 style="text-align: center; font-weight: bold; margin-bottom: 30px;">로그인</h2>
						<form action="<c:url value="/login"/>" method="post" name="login" class="login" onsubmit="return validateLogin();">
							<div class="form-group mb-3">
								<span>
									<input type="email" name="login_email" class="form-control" id="login_email"
										placeholder="이메일">
								</span>
								<span class="error_next_box"></span>
							</div>
							<div class="form-group mb-3">
								<span>
									<input type="password" name="login_password" id="login_password"
										class="form-control" placeholder="비밀번호">
								</span>
								<span class="error_next_box"></span>
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
									<a href="#" data-target="#find_email" data-toggle="modal" onclick="hideLogin()"><strong>아이디 찾기</strong></a>
									  /  
									<a href="#" data-target="#find_pw" data-toggle="modal" onclick="hideLogin()"><strong>비밀번호 찾기</strong></a>
									  /  
									<a href="#" data-target="#user" data-toggle="modal" onclick="hideLogin()"><strong>가입하기</strong></a>
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
			style="display: none;" data-backdrop="static">
			<div class="modal-dialog" style="top: 15%">
				
				<div class="modal-content">
					<div class="widget-form m-0 p-cb">
						<button aria-hidden="true" data-dismiss="modal" class="close" id="sign_close"
							type="button">×</button>
						<div style="text-align: center;">
							<img src="images/logo.png" class="logo-default m-t-15 m-b-15" >
						</div>
						
						<h2 style="text-align: center; font-weight: bold; margin-bottom: 30px;">회원가입</h2>

						<form action="<c:url value="/member"/>" method="post" name="signUp" class="signUp" onsubmit="return validateSignUp();">

							<div class="form-group mb-3">
								<span>
									<input type="email" name="email" class="form-control" id="sign_email"
										placeholder="이메일">
								</span>
								<span class="error_next_box"></span>
							</div>
							<div class="form-group mb-3">
								<span>
									<input type="text" name="name" class="form-control" id="sign_name"
										   placeholder="이름">
								</span>
								<span class="error_next_box"></span>
							</div>
							<div class="form-group mb-3">
								<span>
									<input type="password" name="password" id="sign_password"
										class="form-control" placeholder="비밀번호">
								</span>
								<span class="error_next_box"></span>
							</div>
							<div class="form-group mb-3">
								<span>
									<input type="password" name="password_check" id="sign_password_check"
										class="form-control" placeholder="비밀번호 확인">
								</span>
								<span class="error_next_box"></span>
							</div>
							<div class="form-group mb-3">
								<span>
									<input type="tel" name="phone" class="form-control"
										id="sign_phone" placeholder="전화번호(ex 010-0000-0000)">
								</span>
								<span class="error_next_box"></span>
							</div>
							<div class="form-group mb-3">
								<span>
									<input type="text" name="addr" class="form-control"
										id="sign_addr" placeholder="주소(정확한 도로명주소를 입력해 주세요.)">
								</span>
								<span class="error_next_box"></span>
							</div>
<%--							<div class="form-group mb-3">--%>
<%--								<div class="row">--%>
<%--									<div class="col-lg-3 p-r-10">--%>
<%--										<select name="sign_account" id="sign_account">--%>
<%--											<option value="">카드</option>--%>
<%--										    <option value="삼성">삼성</option>--%>
<%--										    <option value="NH농협">NH농협</option>--%>
<%--										    <option value="롯데">롯데</option>--%>
<%--										    <option value="비씨">비씨</option>--%>
<%--										    <option value="신한">신한</option>--%>
<%--										    <option value="현대">현대</option>--%>
<%--										    <option value="하나">하나</option>--%>
<%--										    <option value="그 외">그 외(계좌 번호 앞에 직접 기재)</option>--%>
<%--										</select>--%>
<%--									</div>--%>
<%--									<div class="col-lg-9">--%>
<%--										<input type="text" name="sign_account_num" class="form-control"--%>
<%--											id="sign_account_num" placeholder="카드번호(ex 1111-2222-3333-4444)">--%>
<%--									</div>--%>
<%--								</div>--%>
<%--								<span class="error_next_box"></span>--%>
<%--							</div>--%>

							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-block">회원가입</button>
							</div>
						</form>
					</div>
				</div>
				
			</div>
		</div>

		<!-- 아이디 찾기 Modal -->
		<div class="modal fade" id="find_email" tabindex="-1" role="modal"
			aria-labelledby="modal-label" aria-hidden="true"
			style="display: none;" data-backdrop="static">
			<div class="modal-dialog" style="top: 25%">
				<div class="modal-content">
					<!-- <div class="modal-header text-center">
						<button aria-hidden="true" data-dismiss="modal" class="close" id="login_close"
							type="button">×</button>
					</div> -->
					<div class="widget-form m-0 p-cb" >
						<button aria-hidden="true" data-dismiss="modal" class="close" id="login_close"
							type="button">×</button>
						<h2 style="text-align: center; font-weight: bold; margin-bottom: 30px;">아이디 찾기</h2>
						<form action="" method="get" name="login">
							<div class="form-group mb-3">
								<span>
									<input type="text" name="find_email_name" class="form-control" id="find_email_name"
										placeholder="이름">
								</span>
								<span class="error_next_box"></span>
							</div>
							<div class="form-group mb-3">
								<span>
									<input type="tel" name="find_email_tel" id="find_email_tel"
										class="form-control" placeholder="전화번호(ex 010-0000-0000)">
								</span>
								<span class="error_next_box"></span>
							</div>
							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-block">아이디 찾기</button>
							</div>
						</form>
					</div>
				</div>
				
			</div>
		</div>
		
		<!-- 비밀번호 찾기 Modal -->
		<div class="modal fade" id="find_pw" tabindex="-1" role="modal"
			aria-labelledby="modal-label" aria-hidden="true"
			style="display: none;" data-backdrop="static">
			<div class="modal-dialog" style="top: 25%">
				<div class="modal-content">
					<!-- <div class="modal-header text-center">
						<button aria-hidden="true" data-dismiss="modal" class="close" id="login_close"
							type="button">×</button>
					</div> -->
					<div class="widget-form m-0 p-cb" >
						<button aria-hidden="true" data-dismiss="modal" class="close" id="login_close"
							type="button">×</button>
						<h2 style="text-align: center; font-weight: bold; margin-bottom: 30px;">비밀번호 찾기</h2>
						<form action="" method="get" name="login">
							<div class="form-group mb-3">
								<span>
									<input type="email" name="find_pw_email" class="form-control" id="find_pw_email"
										placeholder="이메일">
								</span>
								<span class="error_next_box"></span>
							</div>
							<div class="form-group mb-3">
								<span>
									<input type="text" name="find_pw_name" class="form-control" id="find_pw_name"
										placeholder="이름">
								</span>
								<span class="error_next_box"></span>
							</div>
							<div class="form-group mb-3">
								<span>
									<input type="tel" name="find_pw_tel" id="find_pw_tel"
										class="form-control" placeholder="전화번호(ex 010-0000-0000)">
								</span>
								<span class="error_next_box"></span>
							</div>
							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-block">비밀번호 찾기</button>
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
    
<%--    <script>--%>
<%--    --%>
<%--    	/* 로그인창 닫기 버튼 클릭 trigger */--%>
<%--    	function hideLogin() {--%>
<%--			$("#login_close").trigger("click");--%>
<%--		}--%>
<%--    	--%>
<%--    	/* 로그인, 회원가입 validation */--%>
<%--    	--%>
<%--    	var login_email = document.querySelector('#login_email');--%>
<%--    	var login_password = document.querySelector('#login_password');--%>
<%--    	--%>
<%--    	var sign_name = document.querySelector('#sign_name');--%>
<%--    	var sign_email = document.querySelector('#sign_email');--%>
<%--    	var sign_password = document.querySelector('#sign_password');--%>
<%--    	var sign_password_check = document.querySelector('#sign_password_check');--%>
<%--    	var sign_phone = document.querySelector('#sign_phone');--%>
<%--    	var sign_addr = document.querySelector('#sign_addr');--%>
<%--    	var sign_account = document.querySelector('#sign_account');--%>
<%--    	var sign_account_num = document.querySelector('#sign_account_num');--%>
<%--    	--%>
<%--    	var error = document.querySelectorAll('.error_next_box');--%>
<%--    	--%>
<%--    	login_email.addEventListener("focusout", loginCheckEmail);--%>
<%--    	login_password.addEventListener("focusout", loginCheckPassword);--%>
<%--    	sign_name.addEventListener("focusout", signCheckName);--%>
<%--    	sign_email.addEventListener("focusout", signCheckEmail);--%>
<%--    	sign_password.addEventListener("focusout", signCheckPassword);--%>
<%--    	sign_password_check.addEventListener("focusout", signCheckPassword2);--%>
<%--    	sign_phone.addEventListener("focusout", signCheckPhone);--%>
<%--    	sign_addr.addEventListener("focusout", signCheckAddr);--%>
<%--    	sign_account.addEventListener("focusout", signCheckAccount);--%>
<%--    	sign_account_num.addEventListener("focusout", signCheckAccountNum);--%>
<%--    	--%>
<%--    	/* 로그인 */--%>
<%--    	--%>
<%--    	function loginCheckEmail() {--%>
<%--    		if(login_email.value.length==0) {--%>
<%--    			error[0].innerHTML = "이메일을 입력해주세요";--%>
<%--    			error[0].style.display = "block";--%>
<%--    		} else {--%>
<%--    			error[0].innerHTML = "";--%>
<%--    			error[0].style.display = "none";--%>
<%--    		}--%>
<%--    	}--%>
<%--    	--%>
<%--    	function loginCheckPassword() {--%>
<%--    		if(login_password.value.length==0) {--%>
<%--    			error[1].innerHTML = "비밀번호를 입력해주세요";--%>
<%--    			error[1].style.display = "block";--%>
<%--    		} else {--%>
<%--    			error[1].innerHTML = "";--%>
<%--    			error[1].style.display = "none";--%>
<%--    		}--%>
<%--    	}--%>
<%--    	--%>
<%--    	/* 회원가입 */--%>
<%--    		--%>
<%--    	function signCheckName() {--%>
<%--    		/* 이름 체크 */ --%>
<%--    		var namePattern = /[가-힣]/;--%>
<%--    		if(sign_name.value.length == 0) {--%>
<%--    			error[2].innerHTML = "이름을 입력해 주세요";--%>
<%--    			error[2].style.color = "red";--%>
<%--    			error[2].style.display = "block";--%>
<%--    		} else if(!namePattern.test(sign_name.value)) {--%>
<%--    			error[2].innerHTML = "이름은 한글로만 입력해 주세요.";--%>
<%--    			error[2].style.color = "red";--%>
<%--    			error[2].style.display = "block";--%>
<%--    		} else {--%>
<%--    			error[2].innerHTML = "허용되는 이름입니다.";--%>
<%--    			error[2].style.color = "#08A600";--%>
<%--    	        error[2].style.display = "block";--%>
<%--    		}--%>
<%--    	}--%>
<%--    	--%>
<%--    	function signCheckEmail() {--%>
<%--    		/* 이메일 체크 */--%>
<%--    		var idPattern = /^[\w]+@[\w]+.[\.\w]{2,5}$/;--%>
<%--    		if(sign_email.value.length==0) {--%>
<%--    			error[3].innerHTML = "이메일을 입력해 주세요";--%>
<%--    			error[3].style.color = "red";--%>
<%--    			error[3].style.display = "block";--%>
<%--    		} else if(!idPattern.test(sign_email.value)) {--%>
<%--    			error[3].innerHTML = "이메일 양식이 맞지 않습니다.";--%>
<%--    			error[3].style.color = "red";--%>
<%--    			error[3].style.display = "block";--%>
<%--    		} else {--%>
<%--    			error[3].innerHTML = "이메일 양식이 맞습니다.";--%>
<%--    			error[3].style.color = "#08A600";--%>
<%--    	        error[3].style.display = "block";--%>
<%--    		}--%>
<%--    	} --%>
<%--    	--%>
<%--    	function signCheckPassword() {--%>
<%--    		/* 비밀번호 체크 */--%>
<%--    		var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;--%>
<%--    		if(sign_password.value.length==0) {--%>
<%--    			error[4].innerHTML = "비밀번호를 입력해 주세요";--%>
<%--    			error[4].style.color = "red";--%>
<%--    			error[4].style.display = "block";--%>
<%--    		} else if(!pwPattern.test(sign_password.value)) {--%>
<%--    			error[4].innerHTML = "비밀번호는 8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";--%>
<%--    			error[4].style.color = "red";--%>
<%--    			error[4].style.display = "block";--%>
<%--    		} else {--%>
<%--    			error[4].innerHTML = "";--%>
<%--    			error[4].style.display = "none";--%>
<%--    		}--%>
<%--    	}--%>
<%--    	--%>
<%--    	function signCheckPassword2() {--%>
<%--    		/* 비밀번호 확인 체크 */--%>
<%--    		if(sign_password.value.length==0) {--%>
<%--    			error[5].innerHTML = "비밀번호를 먼저 입력해 주세요";--%>
<%--    			error[5].style.color = "red";--%>
<%--    			error[5].style.display = "block";--%>
<%--    		} else if(sign_password_check.value.length==0) {--%>
<%--    			error[5].innerHTML = "비밀번호 확인을 입력해 주세요.";--%>
<%--    			error[5].style.color = "red";--%>
<%--    			error[5].style.display = "block";--%>
<%--    		} else if(sign_password_check.value != sign_password.value) {--%>
<%--    			error[5].innerHTML = "비밀번호가 일치하지 않습니다.";--%>
<%--    			error[5].style.color = "red";--%>
<%--    			error[5].style.display = "block";--%>
<%--    		} else {--%>
<%--    			error[5].innerHTML = "비밀번호가 일치합니다."--%>
<%--   				error[5].style.color = "#08A600";--%>
<%--    	        error[5].style.display = "block";--%>
<%--    		}--%>
<%--    	}--%>
<%--    	--%>
<%--    	function signCheckPhone() {--%>
<%--    		/* 전화번호 확인 체크 */--%>
<%--    		var phonePattern = /^(?:(010-\d{4})|(01[1|6|7|8|9]-\d{3,4}))-(\d{4})$/;--%>
<%--    		if(sign_phone.value === "") {--%>
<%--    			error[6].innerHTML = "전화번호를 입력해 주세요.";--%>
<%--    			error[6].style.color = "red";--%>
<%--    			error[6].style.display = "block";--%>
<%--    		} else if(!phonePattern.test(sign_phone.value)) {--%>
<%--    			error[6].innerHTML = "전화번호 형식이 잘못되었습니다.";--%>
<%--    			error[6].style.color = "red";--%>
<%--    			error[6].style.display = "block";--%>
<%--    		} else {--%>
<%--    			error[6].innerHTML = "전화번호가 입력되었습니다."--%>
<%--   				error[6].style.color = "#08A600";--%>
<%--       	        error[6].style.display = "block";--%>
<%--    		}--%>
<%--    	}--%>
<%--    	--%>
<%--    	function signCheckAddr() {--%>
<%--    		/* 주소 확인 체크 */--%>
<%--    		var namePattern = /[가-힣]/;--%>
<%--    		if(sign_addr.value === "") {--%>
<%--    			error[7].innerHTML = "주소를 입력해 주세요.";--%>
<%--    			error[7].style.color = "red";--%>
<%--    			error[7].style.display = "block";--%>
<%--    		} else if(!namePattern.test(sign_addr.value)) {--%>
<%--    			error[7].innerHTML = "주소 형식이 잘못되었습니다.";--%>
<%--    			error[7].style.color = "red";--%>
<%--    			error[7].style.display = "block";--%>
<%--    		} else {--%>
<%--    			error[7].innerHTML = "주소가 입력되었습니다."--%>
<%--   				error[7].style.color = "#08A600";--%>
<%--       	        error[7].style.display = "block";--%>
<%--    		}--%>
<%--    	}--%>
<%--    	--%>
<%--    	function signCheckAccount() {--%>
<%--    		/* 카드 종류 확인 체크 */--%>
<%--    		if(sign_account.value === "") {--%>
<%--    			error[8].innerHTML = "카드 종류를 선택해 주세요.";--%>
<%--    			error[8].style.color = "red";--%>
<%--    			error[8].style.display = "block";--%>
<%--    		} else if(sign_account.value === "그 외") {--%>
<%--    			error[8].innerHTML = "카드 번호 앞에 카드 종류를 기재해 주세요.";--%>
<%--    			error[8].style.color = "orange";--%>
<%--    			error[8].style.display = "block";--%>
<%--    		} else if((!sign_account.value == "" || sign_account.value == "그 외") && !sign_account_num.value == '') {--%>
<%--    			error[8].innerHTML = "카드번호를 반드시 확인해 주세요."--%>
<%--   				error[8].style.color = "#08A600";--%>
<%--       	        error[8].style.display = "block";--%>
<%--    		} else {--%>
<%--    			error[8].innerHTML = "카드가 선택되었습니다."--%>
<%--   				error[8].style.color = "#08A600";--%>
<%--       	        error[8].style.display = "block";--%>
<%--    		}--%>
<%--    	}--%>
<%--    	--%>
<%--    	function signCheckAccountNum() {--%>
<%--    		/* 카드번호 확인 체크 */--%>
<%--    		var accountPattern = /^(\d{4})-(\d{4})-(\d{4})-(\d{4})$/;--%>
<%--    		if(sign_account.value === "") {--%>
<%--    			error[8].innerHTML = "카드 종류를 선택해 주세요.";--%>
<%--    			error[8].style.color = "red";--%>
<%--    			error[8].style.display = "block";--%>
<%--    		} else if(sign_account_num.value === "") {--%>
<%--    			error[8].innerHTML = "카드번호를 입력해 주세요.";--%>
<%--    			error[8].style.color = "red";--%>
<%--    			error[8].style.display = "block";--%>
<%--    		} else {--%>
<%--    			error[8].innerHTML = "카드번호를 반드시 확인해 주세요."--%>
<%--   				error[8].style.color = "#08A600";--%>
<%--       	        error[8].style.display = "block";--%>
<%--    		}--%>
<%--    	}--%>
<%--    	--%>
<%--    	/* 모달창 닫을때 입력값 초기화 실패,, */--%>
<%--//     	$('#login').on('hidden.bs.modal', function(e) {--%>
<%--// 			document.forms['login'].reset();--%>
<%--// 		})--%>
<%--		--%>
<%--// 		$('#user').on('hidden.bs.modal', function(e) {--%>
<%--// 			document.forms['signUp'].reset();--%>
<%--// 		})--%>
<%--		--%>
<%--		function resetLogin() {--%>
<%--    		$(".login")[0].reset();--%>
<%--    		error[0].innerHTML = "";--%>
<%--    		error[1].innerHTML = "";--%>
<%--    	}--%>
<%--		--%>
<%--    	function resetSignUp() {--%>
<%--    		$(".signUp")[0].reset();--%>
<%--    		error[2].innerHTML = "";--%>
<%--    		error[3].innerHTML = "";--%>
<%--    		error[4].innerHTML = "";--%>
<%--    		error[5].innerHTML = "";--%>
<%--    		error[6].innerHTML = "";--%>
<%--    	}--%>
<%--		--%>
<%--    	function validateLogin() {--%>
<%--    		if( !error[0].innerText == "" || login_email.value == '' ) {--%>
<%--    			alert('이메일을 반드시 입력해 주세요.');--%>
<%--    			document.getElementById('login_email').focus();--%>
<%--    			return false;--%>
<%--    		}--%>
<%--    		--%>
<%--    		if( !error[1].innerText == "" || login_password.value == '' ) {--%>
<%--    			alert('비밀번호를 반드시 입력해 주세요.');--%>
<%--    			document.getElementById('login_password').focus();--%>
<%--    			return false;--%>
<%--    		}--%>
<%--    		--%>
<%--    		return true;--%>
<%--    		--%>
<%--    	}--%>
<%--    	--%>
<%--    	function validateSignUp() {--%>
<%--    		if( (!error[2].innerText == "" && error[2].style.color == 'red') || sign_name.value == '' ) {--%>
<%--    			alert('이름을 입력하시거나 한글로만 입력해 주세요.');--%>
<%--    			document.getElementById('sign_name').focus();--%>
<%--    			return false;--%>
<%--    		}--%>
<%--    		--%>
<%--    		if( (!error[3].innerText == "" && error[3].style.color == 'red') || sign_email.value == '' ) {--%>
<%--    			alert('이메일을 입력하시거나 이메일 양식을 확인해 주세요.');--%>
<%--    			document.getElementById('sign_email').focus();--%>
<%--    			return false;--%>
<%--    		}--%>
<%--    		--%>
<%--    		if( (!error[4].innerText == "" && error[4].style.color == "red") || sign_password.value == '' ) {--%>
<%--    			alert('비밀번호는 8~16자 영문 대 소문자, 숫자, 특수문자를 사용해 입력해 주세요.');--%>
<%--    			document.getElementById('sign_password').focus();--%>
<%--    			return false;--%>
<%--    		}--%>
<%--    		--%>
<%--    		if( (!error[5].innerText == "" && error[5].style.color == "red") || sign_password_check.value == '' ) {--%>
<%--    			alert('비밀번호 확인을 입력하시거나 비밀번호를 확인해 주세요.');--%>
<%--    			document.getElementById('sign_password_check').focus();--%>
<%--    			return false;--%>
<%--    		}--%>
<%--    		--%>
<%--    		if( (!error[6].innerText == "" && error[6].style.color == "red") || sign_phone.value == '' ) {--%>
<%--    			alert('전화번호를 입력하거나 전화번호 양식을 확인해 주세요.');--%>
<%--    			document.getElementById('sign_phone').focus();--%>
<%--    			return false;--%>
<%--    		}--%>
<%--    		--%>
<%--    		if( (!error[7].innerText == "" && error[7].style.color == "red") || sign_addr.value == '' ) {--%>
<%--    			alert('주소를 입력하거나 주소 양식을 확인해 주세요.');--%>
<%--    			document.getElementById('sign_phone').focus();--%>
<%--    			return false;--%>
<%--    		}--%>
<%--    		--%>
<%--    		if( (!error[8].innerText == "" && error[8].style.color == "red") ) {--%>
<%--    			alert('카드종류 또는 카드번호를 선택해 주세요.');--%>
<%--    			document.getElementById('sign_account').focus();--%>
<%--    			return false;--%>
<%--    		}--%>
<%--    		--%>
<%--    		--%>
<%--    		--%>
<%--    		return true;--%>
<%--    		--%>
<%--    	}--%>
<%--    	--%>
<%--	</script>--%>
 	<script src="${pageContext.request.contextPath }/js/sign.js"></script>
 	<script src="${pageContext.request.contextPath }/js/login_click.js"></script>
</body>
</html>