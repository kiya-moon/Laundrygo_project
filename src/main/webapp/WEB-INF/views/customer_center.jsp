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
<link href="${pageContext.request.contextPath }/css/custom_ky.css"
	type="text/css" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp" />
	<!-- Body Inner -->
	<div class="body-inner-cs">
		<!-- Page title -->
		<div class="page-title-cs">
			<h2>고객센터</h2>
		</div>
		<!-- end: Page title --> 
		<!-- tab start -->
		<div class = "tabs-wrap p-r-100 p-l-100 m-r-100 m-l-100">
			<nav class="navbar navbar-light justify-content-between p-r-0" style="float: right">
				<form class="form-inline nomargin center">
					<input class="form-control mr-sm-2 p-r-100" placeholder="Search"
						aria-label="Search" type="search">
					<button class="btn m-0" type="submit">Search</button>
				</form>
			</nav>
	        <div class="tabs tabs-folder">
	            <ul class="nav nav-tabs" id="myTab3" role="tablist">
	                <li class="nav-item">
	                    <a class="nav-link active" id="delivery" data-toggle="tab" href="#tap1" role="tab" aria-controls="home" aria-selected="true">수거/배송 </a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" id="payment" data-toggle="tab" href="#tap2" role="tab" aria-controls="profile" aria-selected="false">요금제/결제</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" id="laundry" data-toggle="tab" href="#tap3" role="tab" aria-controls="contact" aria-selected="false">세탁</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" id="service" data-toggle="tab" href="#tap4" role="tab" aria-controls="contact" aria-selected="false">서비스이용</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" id="profile" data-toggle="tab" href="#tap5" role="tab" aria-controls="contact" aria-selected="false">회원정보</a>
	                </li>
	                
	            </ul>
	            <div class="tab-content" id="myTabContent3">
	                <div class="tab-pane fade show active" id="tap1" role="tabpanel" aria-labelledby="delivery">
	                	<div class="accordion toggle fancy radius clean">
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>첫 수거 신청 시 세탁물을 어떻게 내놓아야 하나요?</b>
									</h5>
									<div style="" class="ac-content">
										<p>첫 수거 신청시, 정확한 서비스를 위해 모든 세탁물을 분류 방법대로 비닐이나 쇼핑백에 담아</p>
										<p><span style="color: red">런드리고 + 세탁물명(생활빨래, 개별 클리닝, 이불, 신발)</span>을 표기해 문 앞에 내놓으세요.</p>
										</br>
										<p><span style="color: red">*주의</span></p>
										<p>- 맡길 때 사용하시는 비닐이나 쇼핑백, 포장 물품 등은 돌려드리지 않으니 <span style="color: red">폐기 가능한 일회용백</span>을 사용해주세요.</p>
										<p>- 포장백 겉면에 표기가 없어 수거불가 시 운송비 3,500원이 부과됩니다.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>수거/배송은 몇 시에 도착하나요?</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p><b>[수거]</b></p>
										<p>수거 신청 시점부터 순차적으로 수거가 진행됩니다.</p>
										<p>수거 신청 즉시 문 앞에 세탁물을 내놓아 주세요.</p>
										<p>기사님 방문 시 문 앞에 세탁물이 없는 경우 수거가 불가하며, 배송비(3,500원)가 부과됩니다.</p>
										<br>
										<p><b>[배송]</b></p>
										<p>수거 완료 이후 다음날 밤에 배송이 이뤄집니다.</p>
										<p>수거 신청량에 따라 밤 10시 ~ 오전 8시 사이에 배송되며, </p>
										<p><span style="color: red">최근 세탁물량이 급증하면서 오전을 지나 오후 2~3시까지도 배송이 순차적으로 이루어질 수 있음을 안내드립니다.</span></p>
										<br>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>매번 동일한 런드렛이 배송되나요?</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>주기적으로 깨끗하게 관리된 런드렛을 받아볼 수 있도록, 2022년 6월 3일부터 런드렛이 <span style="color: red">공용 런드렛</span>으로 변경되었습니다.</p>
										<p>정기적인 살균/소독, 더러워진 커버의 세탁 및 교체, 고장 부위 수리 등을 통해 더욱 세심하게 관리된 런드렛을 받아볼 수 있고,</p>
										<p>배송 시 마다 새로 부여되는 비밀번호로 더욱 안전하게 이용하실 수 있습니다.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>서비스 가능 지역이 어떻게 되나요?</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>런드리고는 현재 서울, 경기/인천 일부 지역에서 서비스를 이용하실 수 있습니다.</p>
										</br>
										<p><b>서비스 가능 지역</b></p>
										<p>- 서울 전 지역</p>
										<p>- 경기 부천시, 고양시, 안양시, 의왕시, 과천시, 군포시, 성남시</p>
										<p>- 경기 김포시 일부</p>
										<p>- 경기 용인시 (수지구, 기흥구)</p>
										<p>- 경기 하남시 일부, 미사강변신도시</p>
										<p>- 경기 수원시 (팔달구, 영통구)</p>
										<p>- 경기 광명시 일부</p>
										<p>- 위례 신도시, 동탄 신도시, 광교 신도시</p>
										<p>- 인천광영시</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>서비스 미 진행 지역으로 이사합니다.</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>이사로 인해 서비스 이용이 어려운 경우, 현재 이용중인 주소에서 서비스를 해지해주시면 런드렛 회수 및 반납이 진행됩니다.</p>
										<p>서비스 해지는 []MY > 이용중인 서비스 > 해지] 메뉴에서 신청이 가능합니다.</p>
										</br>
										<p>* 서비스 해지에 대한 환불과 초과 사용량에 대한 자세한 내용은 서비스 해지 단계에서 확인할 수 있습니다.</p>
									</div>
								</div>
							</div>
	                </div>
	                <div class="tab-pane fade" id="tap2" role="tabpanel" aria-labelledby="payment">
	                    <div class="accordion toggle fancy radius clean">
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>월정액 서비스 회수를 모두 사용했습니다. 추가 가능한가요?</b>
									</h5>
									<div style="" class="ac-content">
										<p>월정액 서비스에 제공되는 이용 횟수를 소진하였거나 월정액 구성 상품 외의 서비스를 이용하는 경우, 추가로 이용하신 금액 만큼 추가 요금이 발생합니다.</p>
										<p>추가 요금은 "월정액 초과 요금"으로 적용되며, 다음 결제일에 합산하여 결제가 진행됩니다.</p>
										</br>
										<p>*수거/배송 잔여 횟수가 0회인 경우에도 맡기실 수 있으며, 다음 결제일에 수거배송비 3,500원이 추가됩니다.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>다른 월정액 요금제로 변경할 수 있나요?</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>[MY > 이용중인 서비스 > 변경]에서 이용중인 서비스를 변경할 수 있습니다.</p>
										<p>서비스 변경을 신청하시면 '다음 결제 예정일'에 변경된 서비스로 자동 변경됩니다.</p>
										</br>
										<p>* 즉시 변경을 원하시는 경우 고객센터 유선연락 및 1:1 문의를 통해 가능하며 세탁물 수거/배송 전이라면 모두 수령받으신 후 문의 바랍니다.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>월정액 남은 횟수는 다음달로 이월되나요?</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>월정액 미사용 잔여 내역은 별도 환불 및 이월이 진행되지 않아 서비스 이용기간 내 모두 사용해주셔야 합니다.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>등록한 신용카드를 변경하고 싶습니다.</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>[MY > 내정보 > 정보 수정]에서 직접 결제 카드를 변경할 수 있습니다.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>결제 영수증을 발급 받을 수 있나요?</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>신용카드 결제 영수증은 [MY > 결제내역 > 결제내역 상세]에서 확인이 가능합니다.</p>
									</div>
								</div>
							</div>
	                </div>
	                <div class="tab-pane fade" id="tap3" role="tabpanel" aria-labelledby="laundry">
	                    <div class="accordion toggle fancy radius clean">
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>세탁 서비스 과정이 어떻게 되나요?</b>
									</h5>
									<div style="" class="ac-content">
										<p>런드리고 세탁 서비스는 '런드렛(세탁물) 수거 > 검수 > 세탁 > 출고 전 검수 > 포장 > 런드렛(완료된 세탁물) 배송'의 과정을 거치게 됩니다.</p>
										<p>또한, 수거 요청 시 알려드리는 [세탁 주의 사항]을 반드시 확인하고 맡겨주시길 부탁드립니다.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>세탁이 불가능한 품목이 있나요?</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>런드리고는 서비스 환경의 특성과 외부 요인을 고려하여 특정 의류에 대한 서비스 제한을 진행하고 있습니다.</p>
										<p>수령하였으나 세탁이 불가한 항목으로 판단되는 품목은 모바일 인수증에서 세탁 불가 사유를 확인하실 수 있습니다.</p>
										<p>세탁물은 세탁하지 않고 세탁불가 안내 스티커와 함께 포장하여 배송됩니다.</p>
										</br>
										<p>런드리고에서는 추후 환경 개선을 통해 점차 세탁 가능 품목을 늘려갈 예정이니 양해 부탁드립니다.</p>
										</br>
										<p><b>[세탁 불가 항목]</b></p>
										<p>- 천연 모피, 천연 무스탕, 천연 가죽, 성인 한복, 솜류(쿠션, 베개)</p>
										<p>- 가방(에코백 제외), 장식이 많은 커튼</p>
										<p>- 반스 브랜드 운동화 (제조사 권장)</p>
										<p>- 곰팡이, 토사물, 배설물 등으로 오염이 심한 옷은 다른 옷 및 기계 손상을 줄 수 있어 세탁이 어렵습니다.</p>
										<p>- 다른 세탁물에 영향을 줄 수 있는 묻어나는 얼룩 및 묻어나는 이염 옷감 의류는 세탁이 불가합니다.</p>
										<p>- 젖은 빨래는 곰팡이 발생 및 이염의 우려가 있습니다. 세탁 시 발생된 문제는 책임지지 않습니다.</p>
										<p>- 특수 처리가 필요하거나, 공용 기계 세탁이 어려운 의류는 세탁을 제한합니다.</p>
										<p>- 공용 세탁 불가 의류 : 보건복지법에 구분하는 수술복 및 호나자복 등의 의료기관 특수 의류 ,방사능 노출 의류, 화재 노출이나 공사장 사용 의류</p>
										<p>- 일반 의류도 검수 단계에서 전문가의 의견에 따라 세탁이 불가능하다 판단될 수 있습니다.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>동물 털이 붙은 세탁물은 세탁이 안되나요?</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>동물 털이 붙어 있는 세탁물은 1차적으로 털을 제거한 후 세탁하고 잇으나, 다른 세탁물에 영향을 주는 경우나 동물 털 알레르기가 있는 고객을 고려해 부득이하게 세탁 불가 처리될 수 있습니다.</p>
										<p>반려 시에는 배송 횟수 차감 혹은 배송비가 부과되니 수거 신청하기 전, <b>동물 털이 세탁물에 붙어있는지 다시 한 번 확인</b>해 주세요.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>세탁 결과가 만족스럽지 않으면 어떻게 하나요?</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>런드리고는 모든 제품에 최선을 다해 세탁을 진행합니다.</p>
										<p>혹시라도 결과가 만족스럽지 않으시다면 [고객센터 > 1:1 문의 > 문의 유형 : 세탁문의]로 불편사항을 접수 부탁드립니다.</p>
										</br>
										<p>* 세탁 문의 시에는 세탁 완료일과 바코드 번호가 필요하니 참고하시길 바랍니다.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>사용하는 세제에 대한 정보를 알고 싶습니다.</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>런드리고는 고객님의 옷감도 피부처럼 소중히 생각합니다.</p>
										<p>최첨단 R&D 바이오스탠다드와 협력하여 고급 화장품 원료로 구성된 천연 세제를 독자 개발하여 사용하고 있습니다.</p>
										</br>
										<p><b>런드리고 시그니처 세제&유연제 (물 세탁 의류)</b></p>
										</br>
										<p>[모링가드]</p>
										<p>미세먼지와 중금속 등을 흡착 제거하는 원료로 의류의 위생은 물론 피부까지 지켜줍니다.</p>
										<p>[더마쉘]</p>
										<p>옷감의 수분을 유지시켜 변형을 예방하고 섬유 조직을 탄탄하고 부드럽게 만들어줍니다.</p>
										<p>[안티펙트]</p>
										<p>바이러스 감염 예방 조성물로 특허를 획득한 판람근에서 추출한 천연 성분으로 섬유에 남아있는 세균을 제거하고 번식을 억제해줍니다.</p>
										</br>
										<p><b>[최고급 드라이클리닝용 천연 세제]</b></p>
										<p>식품과 화장품의 원료로 쓰이는 이소파라핀이 주 원료로 쓰이며 무색무취로 세탁 직후에도 드라이클리닝 특유의 냄새가 나지 않습니다.</p>
									</div>
								</div>
							</div>
	                </div>
	                <div class="tab-pane fade" id="tap4" role="tabpanel" aria-labelledby="service">
	                	<div class="accordion toggle fancy radius clean">
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>고객센터 전화번호와 상담 시간을 알려주세요.</b>
									</h5>
									<div style="" class="ac-content">
										<p><b>고객센터 전화상담 안내</b></p>
										<p>전화번호: 1833-3429</p>
										<p>상담시간: 평일 9시 ~ 18시</p>
										<p>주말/휴일은 1:1 문의를 이용해주세요.</p>
										</br>
										<p>* 상담이 많은 경우 연결이 지연될 수 있으며, 1:1 문의를 작성하시면 순차적으로 답변해드리고 있습니다.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>세탁물 손상 시 보상 기준이 어떻게 되나요?</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>소중한 세탁물을 안심하고 맡기실 수 있도록,</p>
										<p>런드리고 책임보상 프로그램에 따라 업계 최고 수준의 보상금액을 제공합니다.</p>
										</br>
										<p><b>[책임보상 비율 테이블]</b></p>
										<p><img src="/images/compensation.png" style="width: 600; height: 280"></p>
										<p>기사님 방문 시 문 앞에 세탁물이 없는 경우 수거가 불가하며, 배송비(3,500원)가 부과됩니다.</p>
										</br>
										<p style="text-decoration-line: underline"><b>내용연수별 품목 리스트</b></p>
										<p>
											<ul class="p-l-20" l">
												<li>5년 : 카페트, 러그, 발매트</li>
												<li>4년 : 코트, 자켓, 점퍼, 정장, 치마, 바지, 한복</li>
												<li>3년 : 스포츠웨어, 스웨터, 카디건, 후드티, 맨투맨, 가방, 스카프, 머플러, 넥타이, 커튼, 침구류, 가죽류 및 특수소재 신발(골프화, 등산화 등)</li>
												<li>2년 : 티셔츠, 일반셔츠, 블라우스, 속옷</li>
												<li>1년 : 모자, 일반 신발</li>
											</ul>
										</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i><b>매번 동일한 런드렛이 배송되나요?</b>
									</h5>
									<div style="display: none;" class="ac-content">
										<p>주기적으로 깨끗하게 관리된 런드렛을 받아볼 수 있도록, 2022년 6월 3일부터 런드렛이 <span style="color: red">공용 런드렛</span>으로 변경되었습니다.</p>
										<p>정기적인 살균/소독, 더러워진 커버의 세탁 및 교체, 고장 부위 수리 등을 통해 더욱 세심하게 관리된 런드렛을 받아볼 수 있고,</p>
										<p>배송 시 마다 새로 부여되는 비밀번호로 더욱 안전하게 이용하실 수 있습니다.</p>
									</div>
								</div>
								<div class="ac-item">
									<h5 class="ac-title">
										<i class="fa fa-question-circle"></i>
									</h5>
									<div style="display: none;" class="ac-content">Neque porro
										quisquam est, qui dolorem ipsum quia dolor sit amet,
										consectetur, adipisci velit, sed quia non numquam eius modi
										tempora incidunt ut labore et dolore magnam aliquam quaerat
										voluptatem.</div>
								</div>
							</div>
	                </div>
	                <div class="tab-pane fade" id="tap5" role="tabpanel" aria-labelledby="profile">
	                    <p>Soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. </p>
	                </div>
	            </div>
	        </div>
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
		</div>
		<!-- end: tap -->
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