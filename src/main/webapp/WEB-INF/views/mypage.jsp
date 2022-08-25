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
							style="vertical-align: inherit; color: #000000; font-size: 25px;"><strong style="font-size: 40px">OOO</strong> 님,
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
					<a href="#" data-target="#login" data-toggle="modal"><img src="/images/point.png" class="p-l-30 p-r-30 myicon icon_point"></a>
					<a href="#" data-target="#login" data-toggle="modal"><img src="/images/payList.png" class="p-l-30 p-r-30 myicon icon_payList"></a>
					<a href="#" data-target="#login" data-toggle="modal"><img src="/images/info.png" class="p-l-30 p-r-30 myicon icon_info"></a>
					<a href="#" data-target="#login" data-toggle="modal"><img src="/images/using.png" class="p-l-30 p-r-30 myicon icon_using"></a>
				</div>
			</div>
		</div>
		<!--End: Follow Us-->

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
