
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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

	<script>
		let msg = "${msg}";
		if (msg == "login_err") alert("이메일 또는 비밀번호가 일치하지 않습니다.");

		let msg_pickup = "${login_pickup_msg}";
		if (msg_pickup == "login_pickup") alert("로그인 후 이용해주세요.");

		let msg_monthly = "${monthly_arr_msg}";
		if (msg_monthly == "monthly_arr") alert("월정액 구매 후 이용가능합니다.");

		let qna_login = "${qna_login}";
		if( qna_login == "not" ) alert("1:1 문의는 로그인 후 이용해주세요.")
	</script>

	<script>
		let check = "${check}";
		let message = "${message}";

		if( check == 1 ) {
			alert('일치하는 정보가 없습니다.');
		} else if( check == 2 ) {
			alert(message);
		}
	</script>

	<script>
		let check_pw = "${check_pw}";
		let message_pw = "${message_pw}";

		if( check_pw == 1 ) {
			alert('일치하는 정보가 없습니다.');
		} else if( check_pw == 2 ) {
			alert(message_pw);
		}
	</script>

<%--	<script>--%>
<%--		let mod_result = "${mod_result}";--%>
<%--		if( mod_result == "mod_ok" ) alert('회원정보 수정에 성공하였습니다. 다시 로그인해 주세요.');--%>
<%--	</script>--%>

	<%
		String login_ch = (String)session.getAttribute("email");
		if (login_ch!=null) {
	%>
	<script>
		$(function(){										// 로그인,회원가입 버튼 없어짐, 로그아웃, 마이페이지 버튼 생성
			document.getElementById('join_btn').style.display = "none";
			document.getElementById('login_btn').style.display = "none";
			document.getElementById('logout_btn').style.display = "block";
			document.getElementById('mypage_btn').style.display = "block";
		});

	</script>
	<% } %>


 <!-- Body Inner -->
    <div class="body-inner">

		<div id="topbar" class="d-xl-block d-lg-block topbar-fullwidth no-border background-white">
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

	                            <li><a href="https://blog.naver.com/laundrygo" target="_blank"><img src="${pageContext.request.contextPath}/images/naver_logo.png"></a></li>
	                            <li><a href="https://www.instagram.com/Laundrygo.life/" target="_blank"><img src="${pageContext.request.contextPath}/images/in_logo.png"></a></li>
	                            <li><a href="https://www.youtube.com/channel/UCi9dhmANTexQguWXHBgwwSg" target="_blank"><img src="${pageContext.request.contextPath}/images/you_logo.png"></a></li>
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
		                            <img src="${pageContext.request.contextPath}/images/logo.png" class="logo-default">
		                            <img src="${pageContext.request.contextPath}/images/logo-sticky.png" class="logo-sticky">
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
	                            <nav class="p-b-20">
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
							<img src="${pageContext.request.contextPath}/images/logo.png" class="logo-default m-t-15 m-b-15" >
						</div>

						<h2 style="text-align: center; font-weight: bold; margin-bottom: 30px;">회원가입</h2>

						<form action="<c:url value="/member"/>" method="post" name="signUp" class="signUp" onsubmit="return validateSignUp();">

							<div class="form-group mb-3">
								<span>
									<div class="row">
										<div class="col-lg-9 p-r-0">
										<input type="email" name="email" class="form-control" id="sign_email" onchange="resetDupli()"
											   placeholder="이메일">
										</div>
										<div class="col-lg-3 text-right">
											<button type="button" id="dupli_chk" class="btn" onclick="dupliChk();">중복체크</button>
										</div>
									</div>
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
									<input type="tel" oninput="autoHyphen(this)" name="phone" class="form-control"
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
						<button aria-hidden="true" data-dismiss="modal" class="close" id="find_email_close"
							type="button">×</button>
						<h2 style="text-align: center; font-weight: bold; margin-bottom: 30px;">아이디 찾기</h2>
						<form action="<c:url value="/findId"/>" method="post" name="login">
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
						<button aria-hidden="true" data-dismiss="modal" class="close" id="find_pw_close"
							type="button">×</button>
						<h2 style="text-align: center; font-weight: bold; margin-bottom: 30px;">비밀번호 찾기</h2>
						<form action="<c:url value="/findPw"/>" method="post" name="login">
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
 <script type="text/javascript" src="js/sign.js"></script>


</body>
</html>