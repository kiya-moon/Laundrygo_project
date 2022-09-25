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
	<title>1:1문의</title>
	<link href="${pageContext.request.contextPath }/css/plugins.css"
		  type="text/css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/css/style.css"
		  type="text/css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/css/custom_ky.css"
		  type="text/css" rel="stylesheet">
	<!-- Dropzone plugin files-->
	<link href="${pageContext.request.contextPath }/css/dropzone.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp" />
<!-- Body Inner -->
	<div class="body-inner-cs">
		<!-- Page title -->
		<div class="page-title-cs">
			<h2>1:1 문의</h2>
		</div>
		<!-- end: Page title -->
		<!-- tab start -->
		<div class="tabs-wrap p-r-100 p-l-100 m-r-100 m-l-100 m-b-50">

			<div class="tabs tabs-folder">
				<ul class="nav nav-tabs" id="myTab3" role="tablist">
					<li class="nav-item col-lg-6 p-0 text-center"><a
							class="nav-link active" id="delivery" data-toggle="tab"
							href="#tap1" role="tab" aria-controls="qna" aria-selected="true">문의하기
					</a></li>
					<li class="nav-item col-lg-6 p-0 text-center"><a
							class="nav-link" id="payment" data-toggle="tab" href="#tap2"
							role="tab" aria-controls="myqna" aria-selected="false">나의 문의내역</a></li>

				</ul>
				<!-- 문의하기 -->
				<div class="tab-content" id="myTabContent3">
					<div class="tab-pane fade show active" id="tap1" role="tabpanel"
						 aria-labelledby="qna">
						<div class="qna-form p-l-100 p-r-100 p-t-30">
							<p>고객센터 운영 시간 안내</p>
							<br>
							<p>1:1문의</p>
							<p>평일 9시 ~ 22시, 주말/휴일 11시 ~ 22시</p>
							<br>
							<p>전화상담 : 1833-3429</p>
							<p>평일 9시 ~ 18시, 주말/휴일 11시 ~ 18시</p>
							<br>
							<hr>
							<form method="post" class="cs-contents" name="csForm">
								<!-- Select box -->
								<%--@declare id="cs-contents"--%><div class="select-box-area p-t-50 p-b-50">
								<label class="select-box-area-label p-b-10" for=""
									   style="font-size: 18px">문의 유형 선택 <span
										style="color: red">*</span></label>
								<select id="cs_type" name="cs">
									<option class="option" value="">문의 유형을 알려주세요</option>
									<option class="option" value="요금제 문의">요금제 문의</option>
									<option class="option" value="결제 문의">결제 문의</option>
									<option class="option" value="수거/배송 문의">수거/배송 문의</option>
									<option class="option" value="런드렛 이용 문의">런드렛 이용 문의</option>
									<option class="option" value="세탁 문의">세탁 문의</option>
									<option class="option" value="서비스/회원 문의">서비스/회원 문의</option>
								</select>
							</div>
								<!-- end: Select box -->
								<!-- Contents -->
								<label class="cs-contents-label p-b-10"
									   style="font-size: 18px">문의 내용 작성 <span
										style="color: red">*</span></label>
								<p style="font-family: 'Happiness-Sans-Regular' !important">
									더 빠른 도움을 위해 어떤 상황인지 자세히 알려주세요.<br>세탁물의 파손이나 훼손 등 문제가 발생한
									부분의 사진을 첨부해주시면, 문제 해결에 많은 도움이 됩니다.
								</p>
								<textarea id="csText" name="csText" class="cs-contents-textarea" maxlength="300"
										  form="cs-contents"></textarea>
								<!-- 								<div class="textLengthWrap"> -->
								<!-- 									<p class="textCount">0자</p> -->
								<!-- 									<p class="textTotal">/300자</p> -->
								<!-- 								</div> -->

								<!--File upload 1-->
								<div id="fileUpload1" class="dropzone m-t-20">
									<div class="fallback">
										<input name="file" type="file" multiple />
									</div>
								</div>
								<small id="dropzoneHelp" class="form-text text-muted">Max file size is 2MB and max number of files is 10.</small>
								<!--end: File upload 1-->

								<button type="button" id="btn_user"
										class="btn btn-block m-t-20 btn-outline text-dark"
										onclick="sendCs()"
										style="border-color: #13B383; font-size: 13.5px !important;">문의 하기</button>
							</form>
						</div>
					</div>

					<!-- 나의 문의내역 -->
					<div class="tab-pane fade" id="tap2" role="tabpanel"
						 aria-labelledby="myqna">
						<!-- for문 돌려서 데이터 뿌려줘야 함... -->
						<div class="accordion toggle fancy radius clean">
							<div class="ac-item">
								<h5 class="ac-title">
									<i class="fa fa-question-circle"></i><b>문의내역 제목 가져오기</b>
								</h5>
								<div class="ac-content">
									<p>문의내역 내용 가져오기</p>
								</div>
							</div>
							<div class="ac-item">
								<h5 class="ac-title">
									<i class="fa fa-question-circle"></i><b>문의내역 제목 가져오기</b>
								</h5>
								<div class="ac-content">
									<p>문의내역 내용 가져오기</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!— end: Body Inner —>
	<jsp:include page="footer.jsp" />
	<!— Scroll top —>
	<a id="scrollTop"><i class="icon-chevron-up"></i><i
			class="icon-chevron-up"></i></a>
	<!—Plugins—>
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<!—Template functions—>
	<script src="js/functions.js"></script>
	<!— Dropzone plugin files—>
	<script src="js/dropzone.js"></script>
	<script src="js/cs.js"></script>
	<script>
		Dropzone.autoDiscover = false;
		//Form 1
		var form2 = $('#fileUpload1');
		form2.dropzone({
			url: "http://polo/files/post",
			addRemoveLinks: true,
			maxFiles: 1,
			maxFilesize: 10,
			acceptedFiles: "image/*",
		});
	</script>
</body>
</html>