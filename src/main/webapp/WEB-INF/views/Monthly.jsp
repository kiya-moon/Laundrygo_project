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
    
    	 <!-- Slider list -->
         <div id="page-title" class="min-h inspiro-slider dots-creative p-0">
             <!-- Slide 1 -->
             <div class="slide kenburns-bg background-image rateit scroll_top" style="background-image:url(images/Monthly_bg1.jpg); background-size: cover; background-position: center center;">
                 <div class="container">
                     <div class="slide-captions text-center text-light">
                         <!-- Captions -->
                         <h4>드라이클리닝 의류가 많다면</h4>
                         <h1>드라이 온리</h1>
                         <!-- end: Captions -->
                     </div>
                 </div>
             </div>
             <!-- end: Slide 1 -->

             <!-- Slide 2 -->
             <div class="slide kenburns-bg background-image dots-creative rateit scroll_top" style="background-image:url(images/Monthly_bg2.jpg); background-size: cover; background-position: center center;">
                 <div class="bg-overlay"></div>
                 <div class="container">
                     <div class="slide-captions text-center text-light">
                         <!-- Captions -->
                         <h4>귀찮은 생활빨래를 한 번에</h4>
                         <h1>런드리 온리</h1>
                         <!-- end: Captions -->
                     </div>
                 </div>
             </div>
             <!-- end: Slide 2 -->
             
             <!-- Slide 3 -->
             <div class="slide kenburns-bg background-image dots-creative rateit scroll_top" style="background-image:url(images/Monthly_bg3.jpg); background-size: cover; background-position: center center;">
                 <div class="bg-overlay"></div>
                 <div class="container">
                     <div class="slide-captions text-center text-light">
                         <!-- Captions -->
                         <h4>생활빨래부터 개별클리닝까지</h4>
                         <h1>드라이&amp런드리 </h1>
                         <!-- end: Captions -->
                     </div>
                 </div>
             </div>
             <!-- end: Slide 3 -->
             

         </div>
         <!--end: Slider list -->
         
         <!-- Content1 -->
         <section id="page-content" style="background-image:url(images/section1_bg.jpg); background-size: cover; background-position: center center;">
            <div class="container m-t-100">
           		<div class="bg-overlay"></div>
                    <div class="slide-captions text-center text-light p-t-50">
                        <!-- Captions -->
                        <!-- <p class="text-medium text-shadow-dark" data-animate="fadeInUp" data-animate-delay="300">
                        	<font style="vertical-align: inherit;"><strong>드라이 온리</strong></font>
                        </p> -->
                        <!--Team members left-->
                <div class="heading-text heading-line text-center">
                    <h4>Dry  Only</h4>
                </div>
                <div class="row team-members team-members-left team-members-shadow m-b-40">
                    <div class="col-lg-6">
                        <div class="team-member text-dark row">
                        	<div class=" col-lg-6 p-t-10">
                        		<h3>드라이 온리 Light</h3>
                            </div>
                            <div class="col-lg-6 text-right">
                                <span><span class="highlight highlight-colored">28&#37;</span> <del class="text-grey">55,000원</del></span>
                                <h3>39,400원</h3>
                            </div>
	                        <div class=" col-lg-6 text-center">
	                        	<h3>개별클리닝</h3>
	                        </div>
	                        <div class="col-lg-6 text-center">
	                             <h3>무료수거배송</h3>
	                        </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="team-member">
                            <div class="team-desc text-dark">
                                <h3>Ariol Doe</h3>
                                <span>Software Developer</span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing tristique hendrerit laoreet. </p>
                                <div class="align-center">
                                    <a class="btn btn-xs btn-slide btn-light" href="#">
                                        <i class="fab fa-facebook-f"></i>
                                        <span>Facebook</span></a>
                                    <a class="btn btn-xs btn-slide btn-light" href="#" data-width="100">
                                        <i class="fab fa-twitter"></i>
                                        <span>Twitter</span></a>
                                    <a class="btn btn-xs btn-slide btn-light" href="#" data-width="118">
                                        <i class="fab fa-instagram"></i>
                                        <span>Instagram</span></a>
                                    <a class="btn btn-xs btn-slide btn-light" href="mailto:#" data-width="80">
                                        <i class="icon-mail"></i>
                                        <span>Mail</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="team-member">
                            <div class="team-desc text-dark">
                                <h3>Emma Ross</h3>
                                <span>Software Developer</span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing tristique hendrerit laoreet. </p>
                                <div class="align-center">
                                    <a class="btn btn-xs btn-slide btn-light" href="#">
                                        <i class="fab fa-facebook-f"></i>
                                        <span>Facebook</span></a>
                                    <a class="btn btn-xs btn-slide btn-light" href="#" data-width="100">
                                        <i class="fab fa-twitter"></i>
                                        <span>Twitter</span></a>
                                    <a class="btn btn-xs btn-slide btn-light" href="#" data-width="118">
                                        <i class="fab fa-instagram"></i>
                                        <span>Instagram</span></a>
                                    <a class="btn btn-xs btn-slide btn-light" href="mailto:#" data-width="80">
                                        <i class="icon-mail"></i>
                                        <span>Mail</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="team-member">
                            <div class="team-desc text-dark">
                                <h3>Victor Loda</h3>
                                <span>Software Developer</span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing tristique hendrerit laoreet. </p>
                                <div class="align-center">
                                    <a class="btn btn-xs btn-slide btn-light" href="#">
                                        <i class="fab fa-facebook-f"></i>
                                        <span>Facebook</span></a>
                                    <a class="btn btn-xs btn-slide btn-light" href="#" data-width="100">
                                        <i class="fab fa-twitter"></i>
                                        <span>Twitter</span></a>
                                    <a class="btn btn-xs btn-slide btn-light" href="#" data-width="118">
                                        <i class="fab fa-instagram"></i>
                                        <span>Instagram</span></a>
                                    <a class="btn btn-xs btn-slide btn-light" href="mailto:#" data-width="80">
                                        <i class="icon-mail"></i>
                                        <span>Mail</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--END: Team members left-->
                        <!-- end: Captions -->
                    </div>
            </div>
        </section>
        <!-- end: Content1 -->
        
        <!-- Content2 -->
        <section id="page-content" style="background-image:url(images/section2_bg.jpg); background-size: cover; background-position: center center;">
            <div class="container m-t-100">
           		<div class="bg-overlay"></div>
                    <div class="slide-captions text-center text-light p-t-100">
                        <!-- Captions -->
                        <p class="text-medium text-shadow-dark p-t-50" data-animate="fadeInUp" data-animate-delay="300">
                        	<font style="vertical-align: inherit;"><strong>합리적인 가격</strong></font>
                        </p>
                        <h3 data-animate="fadeInUp" data-animate-delay="600">내 라이프 스타일에 맞춰 최대 52% 할인된 가격으로 구독하는 월정액 서비스와,<br>안심 정찰 가격으로 원할 때마다 자유롭게 이용하는 자유 이용 서비스,<br><br>어떤 서비스를 선택하든 합리적인 세탁 생활을 경험하세요.</h3>
                        <button type="button" class="btn btn-lg btn-reveal btn-outline btn-reveal-left m-t-30"  data-animate="fadeInUp" data-animate-delay="700"  data-target="#set2" data-toggle="modal">
		                    <font style="vertical-align: inherit;"><span>세탁요금제 안내 <img src="/images/logo_w.png"></span></font>
		                    <i class="icon-chevron-right"></i>
                    	</button><br>
                        <!-- end: Captions -->
                    </div>
            </div>
        </section> 
        <!-- end: Content2 -->
        
        <!-- Content3 -->
        <section id="page-content" style="background-image:url(images/section1_bg.jpg); background-size: cover; background-position: center center;">
            <div class="container m-t-100">
           		<div class="bg-overlay"></div>
                    <div class="slide-captions text-center text-light p-t-100">
                        <!-- Captions -->
                        <p class="text-medium text-shadow-dark p-t-50" data-animate="fadeInUp" data-animate-delay="300">
                        	<font style="vertical-align: inherit;"><strong>세번째</strong></font>
                        </p>
                        <!-- end: Captions -->
                    </div>
            </div>
        </section> 
        <!-- end: Content3 -->
        
     
  
		
    </div>
   <!-- end: Body Inner -->
   <jsp:include page="footer.jsp" />
   
   <!-- Scroll top -->
   <a id="scrollTop"><i class="icon-chevron-up"></i><i class="icon-chevron-up"></i></a>
   
   <!--Plugins-->
   <script src="${pageContext.request.contextPath }/js/jquery.js"></script>
   <script src="${pageContext.request.contextPath }/js/plugins.js"></script>
   <script src="${pageContext.request.contextPath }/js/functions.js"></script>
   <script src="${pageContext.request.contextPath }/js/custom.js"></script>
   
</body>
</html>
