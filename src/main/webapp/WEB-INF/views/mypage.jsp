<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="INSPIRO" />
<meta name="description" content="Themeforest Template Polo">
<title>Laundrygo</title>
<link href="${pageContext.request.contextPath }/css/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/style.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/custom_ys.css"
	type="text/css" rel="stylesheet">
</head>
<body>
	<!-- Body Inner -->
	<jsp:include page="header.jsp" />
	<div class="body-inner">

		<!-- Page title -->
		<div class="container m-t-30">
			<div class="text-center p-t-50">
				<!-- Captions -->
				<p class="text-medium">
					<font style="vertical-align: inherit; color: black; font-size: 80px;"><strong>Mypage</strong></font>
				</p>
				
				<!-- end: Captions -->
			</div>
		</div>
		<!-- end: Page title -->

		<!--Follow Us-->
		<div class="text center m-t-50 m-b-50" style="border: 4px solid #13B383; border-radius: 12px; width: 75%;">
			<div class="text-center">
				<div class="p-20 p-l-50 p-r-50">
					<p class="p-t-20 m-b-5">
						<font
							style="vertical-align: inherit; color: #000000; font-size: 25px;"><strong style="font-size: 40px">${username.email}</strong> 님,
							런드리고와 함께</font>
					</p>
					<p class="">
						<font
							style="vertical-align: inherit; color: #000000; font-size: 25px;">빨래없는
							생활을 시작하세요!</font>
					</p>
					<p class="" style="border-bottom: 1px solid black">
						
					</p>
				</div>
				
				<!-- 마이페이지 메뉴 -->
				<div class="p-b-40">
					<a href="#" data-target="#point" data-toggle="modal"><img src="images/point.png" class="p-l-30 p-r-30 myicon icon_point"></a>
					<a href="#" data-target="#login" data-toggle="modal"><img src="images/payList.png" class="p-l-30 p-r-30 myicon icon_payList"></a>
					<a href="#" data-target="#user_info" data-toggle="modal"><img src="images/info.png" class="p-l-30 p-r-30 myicon icon_info"></a>
					<a href="#" data-target="#login" data-toggle="modal"><img src="images/using.png" class="p-l-30 p-r-30 myicon icon_using"></a>
				</div>
			</div>
		</div>
		<!--End: Follow Us-->

		<!-- 마이페이지 포인트 Modal -->
		<div class="fullwidth">
			<div class="modal fade p-r-0" id="point" tabindex="-1" role="modal"
				 aria-labelledby="modal-label" aria-hidden="true"
				 style="display: none;">
				<div class="modal-dialog m-t-40 m-b-40"
					 style="max-width: 60% !important; margin: 0 auto; top: 5%;">

					<div class="modal-content">
						<div class="widget-form m-0 p-cb">
							<button aria-hidden="true" data-dismiss="modal" class="close"
									id="close" type="button">×</button>
							<div style="text-align: center;">
								<img src="images/logo.png" class="logo-default m-t-15 m-b-15">
							</div>

							<div class="text-center" style="text-align: center;">
								<h3 class="m-t-30 m-b-0">
									<strong>OOO님</strong>의 보유 포인트 : <strong>5000P</strong>
								</h3>
							</div>

							<div class="m-t-15">
								<table class="table table-hover text-center">
									<thead>
										<tr class="blockquote-color">
											<th scope="col">순번</th>
											<th scope="col">수거 종류</th>
											<th scope="col">사용 포인트</th>
											<th scope="col">사용 날짜</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>used-point</td>
											<td>@mdo</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>

		<!-- 마이페이지 내정보 Modal -->
		<div class="modal fade" id="user_info" tabindex="-1" role="modal"
			 aria-labelledby="modal-label" aria-hidden="true"
			 style="display: none;" data-backdrop="static">
			<div class="modal-dialog" style="top: 15%">

				<div class="modal-content">
					<div class="widget-form m-0 p-cb">
						<button aria-hidden="true" data-dismiss="modal" class="close" id="mod_close"
								type="button" onclick="resetMod()">×</button>
						<div style="text-align: center;">
							<img src="images/logo.png" class="logo-default m-t-15 m-b-15" >
						</div>

						<h2 style="text-align: center; font-weight: bold; margin-bottom: 30px;">내정보</h2>

						<form action="<c:url value="/mypage"/>" method="post" name="user_mod" class="user_mod">

							<div class="form-group mb-3">
								<span>
									<input type="email" name="email_mod" class="form-control" id="email_mod"
										   placeholder="이메일" readonly="readonly">
								</span>
							</div>
							<div class="form-group mb-3">
								<span>
									<input type="text" name="name_mod" class="form-control" id="name_mod"
										   placeholder="이름" readonly="readonly">
								</span>
							</div>
							<div class="form-group mb-3">
								<span>
									<div class="row">
										<div class="col-lg-9 p-r-0">
											<input type="password" name="mod_password" id="mod_password"
												   class="form-control" placeholder="비밀번호">
										</div>
										<div class="col-lg-3 text-right">
											<button type="button" id="pwd_mod_btn" class="btn" onclick="mod_pwdChk();">수정</button>
										</div>
									</div>
								</span>
								<span class="mod_error_next_box"></span>
							</div>

							<!-- 새로운 비밀번호 -->
							<div class="form-group mb-3">
								<span>
									<input type="password" name="pwd_mod" class="form-control" id="pwd_mod"
										   placeholder="새 비밀번호" hidden="hidden">
								</span>
								<span class="mod_error_next_box"></span>
							</div>

							<!-- 새로운 비밀번호 확인 -->
							<div class="form-group mb-3">
								<span>
									<input type="password" name="pwd_mod_check" class="form-control" id="pwd_mod_check"
										   placeholder="새 비밀번호 확인" hidden="hidden">
								</span>
								<span class="mod_error_next_box"></span>
							</div>

							<div class="form-group mb-3">
								<span>
									<div class="row">
										<div class="col-lg-9 p-r-0">
											<input type="tel" oninput="autoHyphen(this)" name="phone_mod" class="form-control"
												   id="phone_mod" placeholder="전화번호(ex 010-0000-0000)" readonly="readonly">
										</div>
										<div class="col-lg-3 text-right">
											<button type="button" id="phone_mod_btn" class="btn" onclick="removeRD_phone();">수정</button>
										</div>
									</div>
								</span>
								<span class="mod_error_next_box"></span>
							</div>
							<div class="form-group mb-3">
								<span>
									<div class="row">
										<div class="col-lg-9 p-r-0">
											<input type="text" name="addr_mod" class="form-control"
												   id="addr_mod" placeholder="주소(정확한 도로명주소를 입력해 주세요.)" readonly="readonly">
										</div>
										<div class="col-lg-3 text-right">
											<button type="button" id="addr_mod_btn" class="btn" onclick="removeRD_addr();">수정</button>
										</div>
									</div>
								</span>
								<span class="mod_error_next_box"></span>
							</div>

							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-block">수정하기</button>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>

	</div>
	<!-- end: Body Inner -->
	<jsp:include page="footer.jsp" />

	<!-- Scroll top -->
	<a id="scrollTop"><i class="icon-chevron-up"></i><i
		class="icon-chevron-up"></i></a>

	<!--Plugins-->
	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/js/functions.js"></script>
	<script src="${pageContext.request.contextPath }/js/script.js"></script>
	<script type="text/javascript" src="js/mypage.js"></script>

</body>
</html>
