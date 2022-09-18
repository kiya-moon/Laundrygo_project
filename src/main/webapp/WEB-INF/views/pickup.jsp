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
					<font
						style="vertical-align: inherit; color: black; font-size: 80px;"><strong>수거신청</strong></font>
				</p>

				<!-- end: Captions -->
			</div>
		</div>

		<!-- end: Page title -->

		<!-- Content1 -->
		<div class="container text-center m-t-50 m-b-50"
			style="max-width: 1440px;">
			<div class="post-image" id="">

				<h3 class="font-weight-600 ">오늘 밤 11시 전 세탁물을 문 앞에 내놓고 수거 신청하세요.</h3>
				<h4 class="font-weight-400 p-b-20">
					정확한 서비스를 위해 <span class="text-bold">런드리고 + 세탁물명</span>을 표기하여문 앞에
					내놓아주세요.
				</h4>
				<div class="row">
					<div class="col-lg-11">
						<img src="images/home_step2.png">
					</div>
					<!-- 수거신청 버튼 -->
					<div class="col-lg-1"
						style="margin-top: auto; margin-bottom: auto; font-size: 5rem;">
						<a href="#" data-target="#pickup" data-toggle="modal"><i
							class="icon-arrow-right-circle"></i></a>
					</div>
					<!-- 의류 받기는 방법 -->
					<div class="col-lg-12">
						<button type="button"
							class="btn btn-outline btn-rounded m-t-20 text-dark"
							style="border-color: #13B383;" data-target="#howTo"
							data-toggle="modal">
							<i class="icon-alert-circle"></i> 의류 맡기는 방법
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- end: Content1 -->

		<!-- 수거신청 Modal -->
		<div class="modal fade" id="pickup" tabindex="-1" role="modal"
			aria-labelledby="modal-label" aria-hidden="true"
			style="display: none;">
			<div class="modal-dialog" style="top: 15%">

				<div class="modal-content">
					<div class="widget-form m-0 p-cb">
						<button aria-hidden="true" data-dismiss="modal" class="close"
							id="sign_close" type="button">×</button>
						<div style="text-align: center;">
							<img src="images/logo.png" class="logo-default m-t-15 m-b-15">
						</div>

						<div>
							<h3 class="m-t-30 m-b-0">
								<strong>OOO님,</strong> 오늘 밤
							</h3>
							<h3 class="m-b-20">문 앞의 세탁물을 수거하러 갑니다.</h3>
						</div>

						<form action="" method="get" name="signUp" class="signUp"
							onsubmit="return validateSignUp();">
							<div class="form-group mb-3">
								<div class="border-box b-r-3 m-b-20">
									<h3 class="text-bold">수거/배송 주소</h3>
									<div>
										<input type="text" name="sign_name" class="form-control"
											id="sign_name" placeholder="수거/배송 주소">
									</div>
									<div>
										<h4 class="text-bold m-t-20 m-b-10">알람 메시지 전송 시간</h4>
										<label class="m-r-10"><input type="checkbox"
											name="msg" value="7am" onclick='checkOnlyOne(this)'>
											오전7시 이후</label> <label><input type="checkbox" name="msg"
											value="immediately" onclick='checkOnlyOne(this)'>
											수거/배송 즉시</label>
									</div>
								</div>
							</div>
							
							<div class="form-group mb-3">
								<div class="border-box b-r-3 m-b-20">
									<h3 class="text-bold m-b-20">맡기실 세탁물 선택하기</h3>

									<div class="m-b-30 v-t">
										<label class="v-t"><input type="checkbox"
											name="laundry" value="living" style="zoom: 2.0;"
											onclick='checkOnlyOne2(this)'> <span
											class="m-l-10 text-bold text-dark" style="font-size: 20px;">생활빨래</span></label>
										<span><h5 class="text-bold m-l-40">티셔츠, 수건과 같은
												세탁기에 돌리는 빨래입니다.</h5></span>
									</div>
									<div class="v-t">
										<label class="v-t"><input type="checkbox"
											name="laundry" value="each" style="zoom: 2.0;"
											onclick='checkOnlyOne2(this)'> <span
											class="m-l-10 text-bold text-dark" style="font-size: 20px;">개별클리닝</span></label>
										<span><h5 class="text-bold m-l-40">드라이클리닝, 신발, 이불
												등의</h5></span> <span><h5 class="text-bold m-l-40">개별로 과금되는
												세탁물입니다.</h5></span>
									</div>
								</div>
							</div>
							
							<div class="form-group mb-3">
								<div class="border-box b-r-3 m-b-20 p-b-10">
									<div class="v-t">
										<div class="form-row">
											<div class="form-group col-md-8">
												<div class="custom-control custom-checkbox">
													<input type="checkbox" name="Pointcheck" id="Pointcheck1"
														class="custom-control-input"> <label class="custom-control-label text-dark" for="Pointcheck1"
														style="font-size: 18px;">보유 포인트 우선 차감</label>
												</div>
											</div>
											<div class="form-group col-md-4 text-right">
												<h4>
													<!-- ${dto.point} -->
													0 P
												</h4>
											</div>
										</div>
										<p>
											· 결제 시점에 보유 중인 포인트가 있다면 <span class="text-red">우선 차감</span>합니다.
										</p>
										<hr>
										<div class="form-group m-t-20">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" name="laundryCheck" id="laundryCheck1"
													class="custom-control-input"> 
													<label class="custom-control-label text-dark" for="laundryCheck1"
													style="font-size: 18px;">세탁 고지 사항 동의</label>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-block">수거신청하기</button>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>

		<!-- 의류 맡기는 법 Modal -->
		<div class="fullwidth">
			<div class="modal fade p-r-0" id="howTo" tabindex="-1" role="modal"
				aria-labelledby="modal-label-3" aria-hidden="true">
				<div class="modal-dialog m-t-40 m-b-40"
					style="max-width: 60% !important; margin: 0 auto;">
					<div class="modal-content">
						<div class="modal-header text-center">
							<button aria-hidden="true" data-dismiss="modal" class="close"
								type="button">×</button>
							<div style="text-align: center;">
								<img src="images/logo.png" class="logo-default m-t-15 m-b-15">
							</div>
						</div>

						<div class="modal-body ">
							<div class="row m-b-20">
								<div class="m-auto">
									<img src="images/howTo.gif" style="width: 100%; height: auto;">
								</div>
							</div>
						</div>
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
	<script>
		function checkOnlyOne(target) {
			const checkboxes = document.getElementsByName("msg");
			
			checkboxes.forEach((cb) => {
				cb.checked = false;
			})
			
			target.checked = true;
			
		}
		
		function checkOnlyOne2(target) {
			const checkboxes = document.getElementsByName("laundry");
			
			checkboxes.forEach((cb) => {
				cb.checked = false;
			})
			
			target.checked = true;
			
		}
	</script>



	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/js/functions.js"></script>
	<script src="${pageContext.request.contextPath }/js/script.js"></script>

</body>
</html>
