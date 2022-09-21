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

		<!-- Slider list -->
		<div id="page-title" class="min-h inspiro-slider dots-creative p-0">
			<!-- Slide 1 -->
			<div class="slide kenburns-bg background-image rateit scroll_top"
				style="background-image: url(images/Monthly_bg1.jpg); background-size: cover; background-position: center center;">
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
			<div
				class="slide kenburns-bg background-image dots-creative rateit scroll_top"
				style="background-image: url(images/Monthly_bg2.jpg); background-size: cover; background-position: center center;">
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
			<div
				class="slide kenburns-bg background-image dots-creative rateit scroll_top"
				style="background-image: url(images/Monthly_bg3.jpg); background-size: cover; background-position: center center;">
				<div class="bg-overlay"></div>
				<div class="container">
					<div class="slide-captions text-center text-light">
						<!-- Captions -->
						<h4>생활빨래부터 개별클리닝까지</h4>
						<h1>드라이&amp런드리</h1>
						<!-- end: Captions -->
					</div>
				</div>
			</div>
			<!-- end: Slide 3 -->


		</div>
		<!--end: Slider list -->

		<!-- Content1 -->
		<section id="page-content" class="no-sidebar">
			<div class="container m-t-50">
				<div class="slide-captions text-center">
					<div class="heading-text heading-line text-center">
						<h4>
							Dry Only
							<button type="button"  data-target="#dry-only" data-toggle="modal"
								style="border-style: none; background: none;">
								<i class="icon-alert-circle"> </i>
							</button>
						</h4>
					</div>
					<div class="row team-members team-members-left team-members-shadow m-b-40 m-t-50">
						<div class="col-lg-6 m-b-30">
							<div class="team-member text-dark row p-10 m-0">
								<div class=" col-lg-6 p-t-10">
									<h3>드라이 온리 Light</h3>
								</div>
								<div class="col-lg-6 text-right">
									<span><span class="highlight highlight-colored">28&#37;</span>
										<del class="text-grey">55,000원</del></span>
									<h3>39,400원</h3>
								</div>
								<div class="col-lg-12 border-bottom"></div>
								<div class=" col-lg-6 text-center p-t-30 p-l-60">
									<img src="images/dry_icon.png">
									<p>개별클리닝</p>
									<h4>8장</h4>
								</div>
								<div class="col-lg-6 text-center p-t-30 p-r-60">
									<img src="images/free_icon.png">
									<p>무료수거배송</p>
									<h4>2회</h4>
								</div>
								<div class="col-lg-12 text-center p-t-20">
									<button type="button"  class="btn btn-block text-small p-20" onclick="location.href='/apply'">
										신청하기 Click
									</button>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6 m-b-30">
							<div class="team-member text-dark row p-10 m-0">
								<div class=" col-lg-6 p-t-10">
									<h3>드라이 온리 58</h3>
								</div>
								<div class="col-lg-6 text-right">
									<span><span class="highlight highlight-colored">49&#37;</span>
										<del class="text-grey">115,000원</del></span>
									<h3>58,600원</h3>
								</div>
								<div class="col-lg-12 border-bottom"></div>
								<div class=" col-lg-6 text-center p-t-30 p-l-60">
									<img src="images/dry_icon.png">
									<p>개별클리닝</p>
									<h4>12장</h4>
								</div>
								<div class="col-lg-6 text-center p-t-30 p-r-60">
									<img src="images/free_icon.png">
									<p>무료수거배송</p>
									<h4>2회</h4>
								</div>
								<div class="col-lg-12 text-center p-t-20">
									<button type="button"  class="btn btn-block text-small p-20" onclick="location.href='/apply'">
										신청하기 Click
									</button>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6">
							<div class="team-member text-dark row p-10 m-0">
								<div class=" col-lg-6 p-t-10">
									<h3>드라이 온리 68</h3>
								</div>
								<div class="col-lg-6 text-right">
									<span><span class="highlight highlight-colored">52&#37;</span>
										<del class="text-grey">142,000원</del></span>
									<h3>68,800원</h3>
								</div>
								<div class="col-lg-12 border-bottom"></div>
								<div class=" col-lg-6 text-center p-t-30 p-l-60">
									<img src="images/dry_icon.png">
									<p>개별클리닝</p>
									<h4>15장</h4>
								</div>
								<div class="col-lg-6 text-center p-t-30 p-r-60">
									<img src="images/free_icon.png">
									<p>무료수거배송</p>
									<h4>2회</h4>
								</div>
								<div class="col-lg-12 text-center p-t-20">
									<button type="button"  class="btn btn-block text-small p-20" onclick="location.href='/apply'">
										신청하기 Click
									</button>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6">
							<div class="team-member text-dark row p-10 m-0">
								<div class=" col-lg-6 p-t-10">
									<h3>드라이 온리 84</h3>
								</div>
								<div class="col-lg-6 text-right">
									<span><span class="highlight highlight-colored">51&#37;</span>
										<del class="text-grey">172,500원</del></span>
									<h3>84,300원</h3>
								</div>
								<div class="col-lg-12 border-bottom"></div>
								<div class=" col-lg-6 text-center p-t-30 p-l-60">
									<img src="images/dry_icon.png">
									<p>개별클리닝</p>
									<h4>18장</h4>
								</div>
								<div class="col-lg-6 text-center p-t-30 p-r-60">
									<img src="images/free_icon.png">
									<p>무료수거배송</p>
									<h4>3회</h4>
								</div>
								<div class="col-lg-12 text-center p-t-20">
									<button type="button"  class="btn btn-block text-small p-20" onclick="location.href='/apply'">
										신청하기 Click
									</button>
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
		<hr>
		<!-- Content2 -->
		<section id="page-content" class="no-sidebar">
			<div class="container m-t-50">
				<div class="slide-captions text-center">
					<div class="heading-text heading-line text-center">
						<h4>
							Laundry Only
							<button type="button"  data-target="#laundry-only" data-toggle="modal"
								style="border-style: none; background: none;">
								<i class="icon-alert-circle"> </i>
							</button>
						</h4>
					</div>
					<div class="row team-members team-members-left team-members-shadow m-b-40 m-t-50">
						<div class="col-lg-12 m-b-30">
							<div class="team-member text-dark row p-10 m-0">
								<div class=" col-lg-6 p-t-10">
									<h3>런드리 온리 70</h3>
								</div>
								<div class="col-lg-6 text-right">
									<span><span class="highlight highlight-colored">24&#37;</span>
										<del class="text-grey">92,400원</del></span>
									<h3>70,000원</h3>
								</div>
								<div class="col-lg-12 border-bottom"></div>
								<div class=" col-lg-6 text-center p-t-30 p-l-60">
									<img src="images/laun_icon.png">
									<p>생활빨래</p>
									<h4>8개</h4>
								</div>
								<div class="col-lg-6 text-center p-t-30 p-r-60">
									<img src="images/free_icon.png">
									<p>무료수거배송</p>
									<h4>4회</h4>
								</div>
								<div class="col-lg-12 text-center p-t-20">
									<button type="button"  class="btn btn-block text-small p-20" onclick="location.href='/apply'">
										신청하기 Click
									</button>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6">
							<div class="team-member text-dark row p-10 m-0">
								<div class=" col-lg-6 p-t-10">
									<h3>런드리 온리 50</h3>
								</div>
								<div class="col-lg-6 text-right">
									<span><span class="highlight highlight-colored">5&#37;</span>
										<del class="text-grey">53,200원</del></span>
									<h3>50,400원</h3>
								</div>
								<div class="col-lg-12 border-bottom"></div>
								<div class=" col-lg-6 text-center p-t-30 p-l-60">
									<img src="images/laun_icon.png">
									<p>생활빨래</p>
									<h4>4개</h4>
								</div>
								<div class="col-lg-6 text-center p-t-30 p-r-60">
									<img src="images/free_icon.png">
									<p>무료수거배송</p>
									<h4>4회</h4>
								</div>
								<div class="col-lg-12 text-center p-t-20">
									<button type="button"  class="btn btn-block text-small p-20" onclick="location.href='/apply'">
										신청하기 Click
									</button>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6">
							<div class="team-member text-dark row p-10 m-0">
								<div class=" col-lg-6 p-t-10">
									<h3>런드리 온리 38</h3>
								</div>
								<div class="col-lg-6 text-right">
									<span><span class="highlight highlight-colored">3&#37;</span>
										<del class="text-grey">39,900원</del></span>
									<h3>38,700원</h3>
								</div>
								<div class="col-lg-12 border-bottom"></div>
								<div class=" col-lg-6 text-center p-t-30 p-l-60">
									<img src="images/laun_icon.png">
									<p>생활빨래</p>
									<h4>3개</h4>
								</div>
								<div class="col-lg-6 text-center p-t-30 p-r-60">
									<img src="images/free_icon.png">
									<p>무료수거배송</p>
									<h4>3회</h4>
								</div>
								<div class="col-lg-12 text-center p-t-20">
									<button type="button"  class="btn btn-block text-small p-20" onclick="location.href='/apply'">
										신청하기 Click
									</button>
								</div>
							</div>
						</div>
						
					</div>
					<!--END: Team members left-->
					<!-- end: Captions -->
				</div>
			</div>
		</section>
		<!-- end: Content2 -->
		
		<hr>
		<!-- Content3 -->
		<section id="page-content" class="no-sidebar">
			<div class="container m-t-50">
				<div class="slide-captions text-center">
					<div class="heading-text heading-line text-center">
						<h4>
							Dry&amp;Laundry
							<button type="button"  data-target="#laun_dry" data-toggle="modal"
								style="border-style: none; background: none;">
								<i class="icon-alert-circle"> </i>
							</button>
						</h4>
					</div>
					<div class="row team-members team-members-left team-members-shadow m-b-40 m-t-50">
						<div class="col-lg-12 m-b-30">
							<div class="team-member text-dark row p-10 m-0">
								<div class=" col-lg-6 p-t-10">
									<h3>드라이&amp;런드리 78</h3>
								</div>
								<div class="col-lg-6 text-right">
									<span><span class="highlight highlight-colored">39&#37;</span>
										<del class="text-grey">128,400원</del></span>
									<h3>78,800원</h3>
								</div>
								<div class="col-lg-12 border-bottom"></div>
								<div class=" col-lg-4 text-center p-t-30 p-l-60">
									<img src="images/laun_icon.png">
									<p>생활빨래</p>
									<h4>8개</h4>
								</div>
								<div class="col-lg-4 text-center p-t-30">
									<img src="images/dry_icon.png">
									<p>개별클리닝</p>
									<h4>4회</h4>
								</div>
								<div class="col-lg-4 text-center p-t-30 p-r-60">
									<img src="images/free_icon.png">
									<p>무료수거배송</p>
									<h4>4회</h4>
								</div>
								<div class="col-lg-12 text-center p-t-20">
									<button type="button"  class="btn btn-block text-small p-20" onclick="location.href='/apply'">
										신청하기 Click
									</button>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6">
							<div class="team-member text-dark row p-10 m-0">
								<div class=" col-lg-6 p-t-10">
									<h3>드라이&amp;런드리 59</h3>
								</div>
								<div class="col-lg-6 text-right">
									<span><span class="highlight highlight-colored">33&#37;</span>
										<del class="text-grey">89,200원</del></span>
									<h3>59,600원</h3>
								</div>
								<div class="col-lg-12 border-bottom"></div>
								<div class=" col-lg-4 text-center p-t-30 p-l-60">
									<img src="images/laun_icon.png">
									<p>생활빨래</p>
									<h4>4개</h4>
								</div>
								<div class="col-lg-4 text-center p-t-30 ">
									<img src="images/dry_icon.png">
									<p>개별클리닝</p>
									<h4>4회</h4>
								</div>
								<div class="col-lg-4 text-center p-t-30 p-r-60">
									<img src="images/free_icon.png">
									<p>무료수거배송</p>
									<h4>4회</h4>
								</div>
								<div class="col-lg-12 text-center p-t-20">
									<button type="button"  class="btn btn-block text-small p-20" onclick="location.href='/apply'">
										신청하기 Click
									</button>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6">
							<div class="team-member text-dark row p-10 m-0">
								<div class=" col-lg-6 p-t-10">
									<h3>드라이&amp; 런드리 47</h3>
								</div>
								<div class="col-lg-6 text-right">
									<span><span class="highlight highlight-colored">29&#37;</span>
										<del class="text-grey">66,900원</del></span>
									<h3>47,400원</h3>
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
								<div class="col-lg-12 text-center p-t-20">
									<button type="button"  class="btn btn-block text-small p-20" onclick="location.href='/apply'">
										신청하기 Click
									</button>
								</div>
							</div>
						</div>
						
					</div>
					<!--END: Team members left-->
					<!-- end: Captions -->
				</div>
			</div>
		</section>
		<!-- end: Content3 -->
		
		<!-- Popup1 -->
        <div class="fullwidth">
        <div class="modal fade p-r-0" id="dry-only" tabindex="-1" role="modal" aria-labelledby="modal-label-3" aria-hidden="true">
            <div class="modal-dialog max-w m-0">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h2 class="text-bold p-t-40"><span class="text-red">Dry-only</span> 상세설명</h2>
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    </div>
                    <div class="modal-body">
                        <div class="row m-b-20">
                            <div class="col-md-12 text-center p-t-30">
                            	<h4>하단의 지정품목을 꼭 확인해주세요.<span class="block">이외의 품목은 추가 과금됩니다.</span></h4>
                            	<img src="images/dry_only_box.png" style="width:50%;" alt="드라이 온리 상세설명" >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		</div>
		<!-- end: Popup1 -->
		
		<!-- Popup2 -->
        <div class="fullwidth">
        <div class="modal fade p-r-0" id="laundry-only" tabindex="-1" role="modal" aria-labelledby="modal-label-3" aria-hidden="true">
            <div class="modal-dialog max-w m-0">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h2 class="text-bold p-t-40"><span class="text-red">Laundry-only</span> 상세설명</h2>
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    </div>
                    <div class="modal-body">
                        <div class="row m-b-20">
                            <div class="col-md-12 text-center p-t-30">
                            	<img src="images/laun_only_box.png" style="width:50%;" alt="런드리 온리 상세설명" >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		</div>
		<!-- end: Popup2 -->
		
		<!-- Popup3 -->
        <div class="fullwidth">
        <div class="modal fade p-r-0" id="laun_dry" tabindex="-1" role="modal" aria-labelledby="modal-label-3" aria-hidden="true">
            <div class="modal-dialog max-w m-0">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h2 class="text-bold p-t-40"><span class="text-red">Dry&amp;Laundry</span> 상세설명</h2>
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    </div>
                    <div class="modal-body">
                        <div class="row m-b-20">
                            <div class="col-md-12 text-center p-t-30">
                            	<img src="images/laun_dry_box.png" style="width:50%;" alt="드라이,런드리 상세설명" >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		</div>
		<!-- end: Popup3 -->


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
	<script src="${pageContext.request.contextPath }/js/custom.js"></script>

</body>
</html>
