<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="INSPIRO" />
    <meta name="description" content="Themeforest Template Polo">
	<title>Laundrygo</title>
	<link href="${pageContext.request.contextPath }/css/plugins.css" type="text/css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/css/style.css" type="text/css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/css/custom.css" type="text/css" rel="stylesheet">
</head>
<body>
   <!-- Body Inner -->
   <jsp:include page="header.jsp" />
    <div class="body-inner">
        
         <!-- Page title -->
         <section id="page-title" class="page-title-left "  style="background-image:url(images/section1_bg.jpg); background-size: cover; background-position: center center;">
            <div class="container m-t-100">
           		<div class="bg-overlay"></div>
                    <div class="slide-captions text-center text-light p-t-50">
                        <!-- Captions -->
                        <p class="text-medium text-shadow-dark" data-animate="fadeInUp" data-animate-delay="300">
                        	<font style="vertical-align: inherit;"><strong>비대면 안심 배송</strong></font>
                        </p>
                        <h3 data-animate="fadeInUp" data-animate-delay="600">배달원과 약속하는 번거로움도 시간을 방해받는 일도 없는 프라이빗한 일상<br>스마트 빨래 수거함 런드렛에 안전하고 편리하게 맡기세요.</h3>
                        <button type="button" class="btn btn-lg btn-reveal btn-outline btn-reveal-left m-t-30"  data-animate="fadeInUp" data-animate-delay="700"  data-target="#set1" data-toggle="modal">
		                    <font style="vertical-align: inherit;"><span>런드렛 안내 <img src="/images/logo_w.png"></span></font>
		                    <i class="icon-chevron-right"></i>
                    	</button><br>
                    	<div class="p-t-20" data-animate="fadeInUp" data-animate-delay="1000" >
	                        <a href="#"><img src="/images/icon_app1.png"></a>
	                        <a href="#"><img src="/images/icon_app2.png"></a>
                    	</div>
                        <!-- end: Captions -->
                    </div>
            </div>
        </section>
        <!-- end: Page title -->
        
        <!-- Content1 -->
        <section id="page-content" style="background-image:url(images/section2_bg.jpg); background-size: cover; background-position: center center;">
            <div class="container m-t-100">
           		<div class="bg-overlay"></div>
                    <div class="slide-captions text-center text-light p-t-100">
                        <!-- Captions -->
                        <p class="text-medium text-shadow-dark p-t-50" data-animate="fadeInUp" data-animate-delay="300">
                        	<font style="vertical-align: inherit;"><strong>합리적인 가격</strong></font>
                        </p>
                        <h3 data-animate="fadeInUp" data-animate-delay="600">내 라이프 스타일에 맞춰 최대 52% 할인된 가격으로 구독하는 월정액 서비스와,<br>안심 정찰 가격으로 원할 때마다 자유롭게 이용하는 자유 이용 서비스,<br><br>어떤 서비스를 선택하든 합리적인 세탁 생활을 경험하세요.</h3>
                        <button type="button" class="btn btn-lg btn-reveal btn-outline btn-reveal-left m-t-30"  data-animate="fadeInUp" data-animate-delay="700" >
		                    <font style="vertical-align: inherit;"><span>세탁요금제 안내 <img src="/images/logo_w.png"></span></font>
		                    <i class="icon-chevron-right"></i>
                    	</button><br>
                        <!-- end: Captions -->
                    </div>
            </div>
        </section> 
        <!-- end: Content1 -->
        
         <!-- Content2 -->
        <section id="page-content" style="background-color:#f1f1f1;; background-size: cover; background-position: center center;">
            <div class="container m-t-50">
                    <div class="slide-captions text-center text-dark">
                        <!-- Captions -->
                        <p class="text-medium text-shadow-light " data-animate="fadeInUp" data-animate-delay="300">
                        	<font style="vertical-align: inherit;"><strong>세탁 없는 세탁 생활 시작하기</strong></font>
                        </p>
                    </div>
                    
                    <div class="tabs">
                            <ul class="nav nav-tabs nav-justified m-t-50" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#ch1" role="tab" aria-controls="ch1" aria-selected="true">1.서비스신청</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#ch2" role="tab" aria-controls="ch2" aria-selected="false">2.수거요청</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#ch3" role="tab" aria-controls="ch3" aria-selected="false">3.세탁진행</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#ch4" role="tab" aria-controls="ch4" aria-selected="false">4.세탁 끝!</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade active show" id="ch1" role="tabpanel" aria-labelledby="home-tab">
                                	<div class="row">
                                		<div class="col-lg-5">
		                                	<h1 class="text-md">Step 1.</h1>
		                                	<h3>나에게 맞는 서비스를 신청하세요.</h3>
		                                	<ul class="step1-list">
		                                		<li class="list p-t-30">
		                                			<h2 class="font-weight-600 ">월정액</h2>
		                                			<h4 class="font-weight-400 ">주기적인 세탁이 필요할 때 <span class="block">합리적인 가격으로 이용하세요.</span></h4>
		                                		</li>
		                                		<li class="list p-t-30">
		                                			<h2 class="font-weight-600 ">자유이용</h2>
		                                			<h4 class="font-weight-400 ">필요한 순간마다 안심 정찰 가격으로<span class="block">편리하게 이용하세요.</span></h4>
		                                		</li>
		                                	</ul>
	                                	</div>
	                                	<div class="col-lg-7 text-right" >
		                                	<div class="video-wrapper  right"  style="width:60%;">
		                                		<video src="https://static.laundrygo.com/images/homepage/use/step01_motion_brandweb.mp4" autoplay muted loop playsinline></video>
		                                	</div>
	                                	</div>
                                	</div>
                                </div>
                                <div class="tab-pane fade post-image" id="ch2" role="tabpanel" aria-labelledby="profile-tab">
		                             <h1 class="text-md">Step 2.</h1>
		                             <h3 class="font-weight-600 ">오늘 밤 10시 전 세탁물을 문 앞에 내놓고 수거 신청하세요.</h3>
		                             <h4 class="font-weight-400 p-b-20">정확한 서비스를 위해 <span class="text-bold">런드리고 + 세탁물명</span>을 표기하여문 앞에 내놓아주세요. </h4>
		                             <img src="/images/home_step2.png">
                                </div>
                                <div class="tab-pane fade" id="ch3" role="tabpanel" aria-labelledby="contact-tab">
                                	<div class="row">
                                		<div class="col-lg-6">
		                                	<h1 class="text-md">Step 3.</h1>
		                                	 <h3 class="font-weight-600 ">내 옷의 진행 상황을 앱에서 확인할 수 있어요.</h3>
		                                	 <h4 class="font-weight-400 p-b-20">이용내역에서 실시간으로 확인해보세요.</h4>
	                                	</div>
	                                	<div class="col-lg-6 text-right" >
		                                	<div class="video-wrapper  right" style="width:71%;" >
		                                		<video src="https://static.laundrygo.com/images/homepage/use/step03_motion_brandweb.mp4" autoplay muted loop playsinline></video>
		                                	</div>
	                                	</div>
                                	</div>
                                </div>
                                <div class="tab-pane fade" id="ch4" role="tabpanel" aria-labelledby="contact-tab">
                                	<div class="row">
                                		<div class="col-lg-6">
		                                	<h1 class="text-md">Step 4.</h1>
		                                	 <h3 class="font-weight-600 ">내일 밤 세탁된 옷이 문앞에 도착해요.</h3>
		                                	 <h4 class="font-weight-400 p-b-20">신청한 배송 방식에 따라 런드렛 혹은 라이트백에<br>세탁물이 담겨 배송됩니다.</h4>
		                                	 <p>수선을 맡기는 경우 <span class="text-bold">배송기간이 2일</span> 소요되며, 세탁과 수선을<br>함께 맡기는 경우는 <span class="text-bold">수선 완료 시</span> 함께 배송됩니다.</p>
	                                	</div>
	                                	<div class="col-lg-6 text-right post-image" >
		                                		<img src="/images/home_step4.png">
	                                	</div>
                                	</div>
                                </div>
                            </div>
                        </div>
            </div>
        </section> 
        <!-- end: Content2 -->
        <div class="fullwidth">
        <div class="modal fade p-r-0" id="set1" tabindex="-1" role="modal" aria-labelledby="modal-label-3" aria-hidden="true">
            <div class="modal-dialog max-w m-0">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h2 class="text-bold p-t-40">우리집 스마트 빨래 수거함, 런드렛</h2>
                        <h4>모바일로 빨래 수거 신청하고 런드렛을 문 앞에 내놓으면 빨래 끝!<span class="block">비대면 세탁 서비스를 시작하세요.</span></h4>
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    </div>
                    <div class="modal-body">
                        <div class="row mb20">
                            <div class="col-md-12">
                                <p>test</p>
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
   <a id="scrollTop"><i class="icon-chevron-up"></i><i class="icon-chevron-up"></i></a>
   
   <!--Plugins-->
   <script src="${pageContext.request.contextPath }/js/jquery.js"></script>
   <script src="${pageContext.request.contextPath }/js/plugins.js"></script>
   <script src="${pageContext.request.contextPath }/js/functions.js"></script>
   <script src="${pageContext.request.contextPath }/js/script.js"></script>
   
</body>
</html>
