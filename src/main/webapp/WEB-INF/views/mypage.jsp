<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
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
	<script>
		let mod_result = "${mod_result}";
		if( mod_result == "mod_error" ) {
			alert('카드등록 또는 회원정보 수정에 실패하였습니다. 다시 시도해 주세요.');
		} else if( mod_result == "mod_ok" ) {
			alert('카드등록 또는 회원정보 수정이 성공적으로 수행되었습니다.')
		}
	</script>

<!-- Body Inner -->
<jsp:include page="header.jsp" />
	<c:set var="user" value="${requestScope.user}" />
    <c:set var="credit" value="${requestScope.credit}" />

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
					<a href="#" data-target="#point" data-toggle="modal"><img src="images/point.png" class="p-l-30 p-r-30 myicon icon_point"></a>
					<a href="#" data-target="#payList" data-toggle="modal"><img src="images/payList.png" class="p-l-30 p-r-30 myicon icon_payList"></a>
					<a href="#" data-target="#user_info" data-toggle="modal"><img src="images/info.png" class="p-l-30 p-r-30 myicon icon_info"></a>
					<a href="#" data-target="#using" data-toggle="modal"><img src="images/using.png" class="p-l-30 p-r-30 myicon icon_using"></a>
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
									<strong>${user.name}님</strong>의 보유 포인트 : <strong>${user.point}</strong>
								</h3>
							</div>

							<div class="m-t-15">
								<table class="table table-hover text-center">
									<thead>
									<tr class="blockquote-color">
										<th scope="col">순번</th>
										<th scope="col">월정액 종류</th>
										<th scope="col">사용 포인트</th>
										<th scope="col">사용 날짜</th>
									</tr>
									</thead>
									<tbody>
									<c:forEach var="point" varStatus="status" items="${point}">
										<fmt:formatDate var="point_date" value="${point.use_date}" pattern="yyyy.MM.dd HH:mm:ss"/>
										<tr>
											<th scope="row">${point_length - status.index}</th>
											<td>${point.m_name}</td>
											<td>${point.use_point}</td>
											<td>${point_date}</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- 포인트 modal 끝 -->
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
										<th scope="col">총 금액</th>
									</tr>
									</thead>
									<tbody>
									<tr>
										<th scope="row">1</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
										<td>extra-price</td>
										<td>total-price</td>
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

						<form action="<c:url value="/mypage"/>" method="post" name="user_mod"
							  class="user_mod" onsubmit="return validateModify();">

							<div class="form-group mb-3">
							<span>
							   <input type="email" name="email_mod" class="form-control" id="email_mod"
									  placeholder="이메일" readonly="readonly" value="${user.email}">
							</span>
							</div>
							<div class="form-group mb-3">
							<span>
							   <input type="text" name="name_mod" class="form-control" id="name_mod"
									  placeholder="이름" readonly="readonly" value="${user.name}">
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
									  placeholder="새 비밀번호" hidden="hidden" onkeyup="modCheckPassword()">
							</span>
								<span class="mod_error_next_box"></span>
							</div>

							<!-- 새로운 비밀번호 확인 -->
							<div class="form-group mb-3">
							<span>
							   <input type="password" name="pwd_mod_check" class="form-control" id="pwd_mod_check"
									  placeholder="새 비밀번호 확인" hidden="hidden" onkeyup="modCheckPassword2()">
							</span>
								<span class="mod_error_next_box"></span>
							</div>

							<div class="form-group mb-3">
							<span>
							   <div class="row">
								  <div class="col-lg-9 p-r-0">
									 <input type="tel" oninput="autoHyphen(this)" name="phone_mod" class="form-control"
											id="phone_mod" placeholder="전화번호(ex 010-0000-0000)" readonly="readonly"
											onkeyup="modCheckPhone()" value="${user.phone}">
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
											id="addr_mod" placeholder="주소(정확한 도로명주소를 입력해 주세요.)" readonly="readonly"
											onkeyup="modCheckAddr()" value="${user.addr}">
								  </div>
								  <div class="col-lg-3 text-right">
									 <button type="button" id="addr_mod_btn" class="btn" onclick="removeRD_addr();">수정</button>
								  </div>
							   </div>
							</span>
								<span class="mod_error_next_box"></span>
							</div>

							<div class="form-group mb-3">
								<div class="row">
									<div class="col-lg-3 p-r-10">
										<select name="account_mod" id="account_mod" onselect="${credit.card_type}">
											<option value="">카드</option>
										    <option value="삼성">삼성</option>
										    <option value="NH농협">NH농협</option>
										    <option value="롯데">롯데</option>
										    <option value="비씨">비씨</option>
										    <option value="신한">신한</option>
										    <option value="현대">현대</option>
										    <option value="하나">하나</option>
										</select>
									</div>
									<div class="col-lg-9">
										<input type="text" oninput="autoHyphen2(this)" name="account_num_mod" class="form-control"
											id="account_num_mod" placeholder="카드번호(ex 1111-2222-3333-4444)" onkeyup="modAddAccount()"
                                               value="${credit.card_num}">
									</div>
								</div>
								<span class="mod_error_next_box"></span>
							</div>

							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-block">수정하기</button>
							</div>
						</form>
						<form id="deleteForm" action="">
							<div class="col-md-12 text-center">
								<button type="button" id="deleteBtn" class="btn btn-red btn-block" onclick="deleteUser();">탈퇴하기</button>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
		<!-- 내 정보 modal 끝 -->

		<!-- 이용 중 -->
		<div class="fullwidth">
			<div class="modal fade p-r-0" id="using" tabindex="-1" role="modal"
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
						<div class="modal-body">
							<div>
								<h3 class="m-t-30 m-b-20 text-center" style="text-align:left;">
									<strong>이용중인 상품</strong>
								</h3>
							</div>
							<div class="center team-members team-members-left team-members-shadow">
								<div class="team-member text-dark row p-10 m-0">
									<div class="text-left col-lg-12 p-t-10">
										<h3>${monthlyPayList.m_name eq null? temp.m_name : monthlyPayList.m_name}</h3>
									</div>
									<div class="col-lg-12 border-bottom"></div>
									<div class=" col-lg-4 text-center p-t-30 p-l-60">
										<img src="images/laun_icon.png">
										<p>생활빨래</p>
										<h4>${monthlyPayList.life_cnt eq null? temp.life_cnt : monthlyPayList.life_cnt}</h4>
<%--										<input type="text" class="form-control" name="life_cnt" value="${monthlyPayList.life_cnt eq null? temp.life_cnt : monthlyPayList.life_cnt}">--%>
									</div>
									<div class="col-lg-4 text-center p-t-30">
										<img src="images/dry_icon.png">
										<p>개별클리닝</p>
										<h4>${monthlyPayList.cleaning_cnt eq null? temp.cleaning_cnt : monthlyPayList.cleaning_cnt}</h4>
									</div>
									<div class="col-lg-4 text-center p-t-30 p-r-60">
										<img src="images/free_icon.png">
										<p>무료수거배송</p>
										<h4>${monthlyPayList.free_cnt eq null? temp.free_cnt : monthlyPayList.free_cnt}</h4>
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
										<th scope="col">번호</th>
										<th scope="col">생활 빨래</th>
										<th scope="col">개별 클리닝</th>
										<th scope="col">무료수거/배송</th>
										<th scope="col">상태</th>
									</tr>
									</thead>
									<tbody>
									<c:forEach var="pickup" items="${pickup}">
									<tr>
										<td>${pickup.pickup_num}</td>
										<td>${pickup.p_life}</td>
										<td>${pickup.p_cleaning}</td>
										<td>${pickup.p_free}</td>
										<td>${pickup.going}</td>
									</tr>
									</c:forEach>
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
	<script src="${pageContext.request.contextPath }/js/mypage.js"></script>

	<script>

		$(document).ready(function() {
			let card_type = '${credit.card_type}';

			$('#account_mod').val(card_type).prop("selected", true);
		});

		function deleteUser() {

			let mod_password = $('#mod_password').val();
			let delForm = $('#deleteForm');

			$.ajax({
				type: "POST",
				url: "./mypage/pwdChk",
				data: { "mod_password": mod_password },
				success: function(data) {
					if (data == 0) {
						mod_error[0].innerHTML = "비밀번호가 다릅니다.";
						mod_error[0].style.color = "red";
						mod_error[0].style.display = "block";
						return false;
					} else if(data == 1){
						mod_error[0].innerHTML = "비밀번호가 일치합니다.";
						mod_error[0].style.color = "#08A600";
						mod_error[0].style.display = "block";
						let chkDel = confirm('정말 탈퇴하시겠습니까?');
						if(chkDel){
							delForm.attr("action","<c:url value='/delete'/>");
							delForm.attr("method","post");
							delForm.submit();

						}else return;
					}
				}
			});
		}
	</script>

</body>
</html>
