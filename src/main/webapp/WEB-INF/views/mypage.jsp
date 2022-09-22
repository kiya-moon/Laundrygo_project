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
							style="vertical-align: inherit; color: #000000; font-size: 25px;"><strong style="font-size: 40px">${user.name}</strong> 님,
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
					<a href="#" data-target="#login" data-toggle="modal"><img src="images/point.png" class="p-l-30 p-r-30 myicon icon_point"></a>
					<a href="#" data-target="#payList" data-toggle="modal"><img src="images/payList.png" class="p-l-30 p-r-30 myicon icon_payList"></a>
					<a href="#" data-target="#login" data-toggle="modal"><img src="images/info.png" class="p-l-30 p-r-30 myicon icon_info"></a>
					<a href="#" data-target="#using" data-toggle="modal"><img src="images/using.png" class="p-l-30 p-r-30 myicon icon_using"></a>
				</div>
			</div>
		</div>
		<!--End: Follow Us-->
		<!-- 결제 내역 modal -->
		<div class="fullwidth">
			<div class="modal fade p-r-0" id="payList" tabindex="-1" role="modal"
				 aria-labelledby="modal-label-3" aria-hidden="true">
				<div class="modal-dialog m-t-40 m-b-40"
					 style="max-width: 60% !important; margin: 0 auto;">
					<div class="modal-content h-75">
						<div class="modal-header text-center">
							<button aria-hidden="true" data-dismiss="modal" class="close"
									type="button">×</button>
							<div style="text-align: center;">
								<img src="images/logo.png" class="logo-default m-t-15 m-b-15">
							</div>

						</div>
						<div class="modal-body">
							<div>
								<h3 class="m-t-30 m-b-0" style="text-align:left;">
									<strong>${user.name}님</strong> 결제 내역
								</h3>
							</div>
							<div class="m-t-10">
								<table class="table table-hover">
									<thead>
									<tr class="blockquote-color">
										<th scope="col">상품명</th>
										<th scope="col">금액</th>
										<th scope="col">결제 카드</th>
										<th scope="col">결제일</th>
										<th scope="col">추가 금액</th>
									</tr>
									</thead>
									<tbody>
									<tr>
										<th scope="row">1</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
										<td>extra-price</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- 결제 내역 modal 끝 -->

		<!-- 이용 중 -->
		<div class="fullwidth">
			<div class="modal fade p-r-0" id="using" tabindex="-1" role="modal"
				 aria-labelledby="modal-label-3" aria-hidden="true">
				<div class="modal-dialog m-t-40 m-b-40"
					 style="max-width: 60% !important; margin: 0 auto;">
					<div class="modal-content h-75">
						<div class="modal-header text-center">
							<button aria-hidden="true" data-dismiss="modal" class="close"
									type="button">×</button>
							<div style="text-align: center;">
								<img src="images/logo.png" class="logo-default m-t-15 m-b-15">
							</div>

						</div>
						<div class="modal-body">
							<div>
								<h3 class="m-t-30 m-b-20 text-center" style="text-align:left;">
									<strong>이용중인 상품</strong>
								</h3>
							</div>
							<div class="center team-members team-members-left team-members-shadow">
								<div class="team-member text-dark row p-10 m-0">
									<div class="text-left col-lg-12 p-t-10">
										<h3>드라이&amp; 런드리 47</h3>
									</div>
									<div class="col-lg-12 border-bottom"></div>
									<div class=" col-lg-4 text-center p-t-30 p-l-60">
										<img src="images/laun_icon.png">
										<p>생활빨래</p>
										<h4>3개</h4>
									</div>
									<div class="col-lg-4 text-center p-t-30">
										<img src="images/dry_icon.png">
										<p>개별클리닝</p>
										<h4>3회</h4>
									</div>
									<div class="col-lg-4 text-center p-t-30 p-r-60">
										<img src="images/free_icon.png">
										<p>무료수거배송</p>
										<h4>3회</h4>
									</div>
								</div>

							</div>
							<div>
								<h3 class="m-t-30 m-b-20 text-left">
									<strong>사용 내역</strong>
								</h3>
							</div>
							<div class="m-t-20">
								<table class="table table-hover">
									<thead>
									<tr class="blockquote-color">
										<th scope="col">주소</th>
										<th scope="col">생활 빨래</th>
										<th scope="col">개별 클리닝</th>
										<th scope="col">무료수거/배송</th>
										<th scope="col">상태</th>
									</tr>
									</thead>
									<tbody>
									<tr>
										<th scope="row"></th>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
										<td>extra-price</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- 이용 중 끝 -->
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

</body>
</html>
