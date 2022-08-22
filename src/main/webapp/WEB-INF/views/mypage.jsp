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
<link href="${pageContext.request.contextPath }/css/custom.css"
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
					<font style="vertical-align: inherit; color: black; font-size: 130px;"><strong>Mypage</strong></font>
				</p>
				<p class="p-t-50">
					<font
						style="vertical-align: inherit; color: black; font-size: 30px;"><strong>OOO</strong>님,
						런드리고와 함께</font>
				</p>
				<p class="">
					<font
						style="vertical-align: inherit; color: black; font-size: 30px;">빨래없는
						생활을 시작하세요!</font>
				</p>
				<!-- end: Captions -->
			</div>
		</div>

		<!--Follow Us-->
		<div class="text center" style="background-color: powderblue; width: 75%">
			<div class="m-t-50 text-center m-b-50">
				<a href="#" data-target="#login" data-toggle="modal"><img src="/images/point.png" class="p-l-30 p-r-30" style="width: 200px;"></a>
				<a href="#" data-target="#login" data-toggle="modal"><img src="/images/payList.png" class="p-l-30 p-r-30" style="width: 200px;"></a>
				<a href="#" data-target="#login" data-toggle="modal"><img src="/images/info.png" class="p-l-30 p-r-30" style="width: 200px;"></a>
				<a href="#" data-target="#login" data-toggle="modal"><img src="/images/using.png" class="p-l-30 p-r-30" style="width: 200px;"></a>
			</div>
		</div>
		<!--End: Follow Us-->

		<!-- 마이페이지 메뉴 -->



		<!-- end: Page title -->

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
