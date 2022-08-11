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
<title>고객센터</title>
<link href="${pageContext.request.contextPath }/css/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/style.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/custom.css"
	type="text/css" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp" />
	<!-- Body Inner -->
	<div class="body-inner-cs">
		<!-- Page title -->
		<div class="page-title-cs">
			<h3>고객센터</h3>
		</div>
		<!-- end: Page title -->
		<!-- Search Bar -->
		<nav class="navbar navbar-light justify-content-between">
			<form class="form-inline nomargin center">
				<input class="form-control mr-sm-2 p-r-100" placeholder="Search"
					aria-label="Search" type="search">
				<button class="btn m-0" type="submit">Search</button>
			</form>
		</nav>
		<!-- end: Search Bar -->
		<div class="line"></div>
		<!-- Section -->
		<section>
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<h3>
							General Questions <small>(4)</small>
						</h3>
						<p>Adipisci velit, sed quia non numquam eius modi tempora
							incidunt ut labore et dolore magnam auam quaerat voluptatem.</p>
						<div class="accordion toggle fancy radius clean">
							<div class="ac-item ac-active">
								<h5 class="ac-title">
									<i class="fa fa-question-circle"></i>Where Can I Find my
									Purchase Code?
								</h5>
								<div style="" class="ac-content">Neque porro quisquam est,
									qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
									velit, sed quia non numquam eius modi tempora incidunt ut
									labore et dolore magnam aliquam quaerat voluptatem.</div>
							</div>
							<div class="ac-item">
								<h5 class="ac-title">
									<i class="fa fa-question-circle"></i>Getting Support For Your
									Item
								</h5>
								<div style="display: none;" class="ac-content">Neque porro
									quisquam est, qui dolorem ipsum quia dolor sit amet,
									consectetur, adipisci velit, sed quia non numquam eius modi
									tempora incidunt ut labore et dolore magnam aliquam quaerat
									voluptatem.</div>
							</div>
							<div class="ac-item">
								<h5 class="ac-title">
									<i class="fa fa-question-circle"></i>Can I Get A Refund?
								</h5>
								<div style="display: none;" class="ac-content">Neque porro
									quisquam est, qui dolorem ipsum quia dolor sit amet,
									consectetur, adipisci velit, sed quia non numquam eius modi
									tempora incidunt ut labore et dolore magnam aliquam quaerat
									voluptatem.</div>
							</div>
							<div class="ac-item">
								<h5 class="ac-title">
									<i class="fa fa-question-circle"></i>Which Author Payment
									Option Do I Choose?
								</h5>
								<div style="display: none;" class="ac-content">Neque porro
									quisquam est, qui dolorem ipsum quia dolor sit amet,
									consectetur, adipisci velit, sed quia non numquam eius modi
									tempora incidunt ut labore et dolore magnam aliquam quaerat
									voluptatem.</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- end: Section -->
	</div>
	<!-- end: Body Inner -->
	<jsp:include page="footer.jsp" />
	<!-- Scroll top -->
	<a id="scrollTop"><i class="icon-chevron-up"></i><i
		class="icon-chevron-up"></i></a>
	<!--Plugins-->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<!--Template functions-->
	<script src="js/functions.js"></script>
</body>
</html>