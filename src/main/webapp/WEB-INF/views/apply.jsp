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
    <!-- jQuery 선언부 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="${pageContext.request.contextPath }/css/plugins.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/style.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/custom.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/jquery.steps.css" rel="stylesheet">
</head>
<body>


<!-- Body Inner -->
<jsp:include page="header.jsp" />
<div class="body-inner">
    <section id="page-content" class="no-sidebar">
        <div class="container">
            <div class="row justify-content-center">
                <div class="content col-md-9">
                    <div class="card">
                        <div class="card-body">
                            <!--Wizard 1-->
                            <form id="wizard1" class="wizard" method="post" action="/laundrygo/monthly">
                                <!--Step 1-->
                                <h3>결제 정보</h3>
                                <div class="wizard-content">
                                    <div class="h3 mb-4"><span class="text-bold">월정액서비스</span>로 빨래 없는 생활을 시작해보세요.</div>
                                    <h4>수거/배송 주소</h4>
                                    <div class="form-row">
                                        <div class="form-group col-md-10">
                                            <input type="text" class="form-control" name="address" value="${user.addr}" placeholder="주소 받아오는 곳">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="button" class="form-control" name="button" value="수정" placeholder="수정 바로가기" onclick="applyModAddr()">
                                        </div>
                                    </div>
                                    <h4>결제 정보</h4>
                                    <div class="form-row">
                                        <div class="form-group col-md-10">
                                            <input type="text" class="form-control" name="card_type" id="card_type" value="${card.card_type eq null ? temp.card_type : card.card_type}" placeholder="카드사 받아오는 곳">
                                        </div>
                                        <div class="form-group col-md-10">
                                            <input type="text" class="form-control" name="card_num" id="card_num" value="${card.card_num eq null? temp.card_num : card.card_num}" placeholder="카드번호 받아오는 곳">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="button" class="form-control" name="button" value="카드 변경" placeholder="변경 바로가기" onclick="applyModAccount()">
                                        </div>
                                    </div>
                                    <p>· 선택하신 카드로 결제 금액이 자동결제 됩니다.</p>
                                </div>
                                <!--end: Step 1-->
                                <!--Step 2-->
                                <h3>결제확인</h3>
                                <div class="wizard-content">
                                    <h3 class="text-bold">런드리고 포인트</h3>
                                    <div class="form-row">
                                        <div class="form-group col-md-8">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" name="Pointcheck" id="Pointcheck1" class="custom-control-input">
                                                <label class="custom-control-label text-dark" for="Pointcheck1" style="font-size:18px;">보유 포인트 우선 차감</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-4 text-right">
                                            <h4>${user.point} P</h4>
                                        </div>
                                        <input type="hidden" id="point_in" name="point_in" value="${user.point}" >
                                    </div>
                                    <p>· 결제 시점에 보유 중인 포인트가 있다면 <span class="text-red">우선 차감</span>합니다.</p>
                                    <hr>
                                    <h3 class="text-bold p-t-20">최종 결제 금액</h3>
                                    <div class="form-row">
                                        <div class="form-group col-md-8">
                                            <input type="text" name="m_name" class="blockquote-simple p-0 m-0" style="outline:none; font-size: 1.4rem;" value="${monthly.m_name}" readonly="readonly" >
                                        </div>
                                        <div class="form-group col-md-4 text-right">
                                            <h4>${monthly.m_price} 원</h4>
                                        </div>
                                        <input type="hidden" id="price_in" value="${monthly.m_price}" >
                                        <div class="form-group col-md-7 h4">
                                            포인트 사용
                                        </div>
                                        <div class="form-group col-md-5 text-right">
                                            <h4 id="changePoint"><input type="text" name="m_point" id="m_point" class="blockquote-simple text-bold text-right p-0 m-0" style="outline:none; font-size: 1.4rem;" value="0" readonly="readonly"> P</h4>
                                        </div>
                                    </div>
                                    <hr color="black">
                                    <div class="form-row">
                                        <div class="form-group col-md-7">
                                            <h4>총 결제금액(4주)</h4>
                                        </div>
                                        <div class="form-group col-md-5 text-right">
                                            <h4 class="text-red" id="pay_total"><input type="text" name="m_price" class="blockquote-simple text-bold text-right p-0 m-0" style="outline:none; font-size: 1.4rem;" value="${monthly.m_price}" readonly="readonly"> 원</h4>
                                        </div>
                                        <input type="hidden" name="life_cnt" value="${monthly.life}">
                                        <input type="hidden" name="cleaning_cnt" value="${monthly.cleaning}">
                                        <input type="hidden" name="free_cnt" value="${monthly.free}">
                                        <p>. <span class="text-bold">4주(28일)</span> 마다 등록하신 카드로 자동 결제됩니다.<span class="block">· 사용한 포인트에 따라 매월 <span class="text-bold">결제금액이 변동</span>됩니다.</span></p>
                                        <div class="form-group col-md-12">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" name="Paycheck" id="Paycheck1" class="custom-control-input">
                                                <label class="custom-control-label text-dark" for="Paycheck1" style="font-size:18px;">결제 정보 저장 및 자동결제에 동의합니다.</label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!--end: Step 2-->
                                <!--Step 3-->
                                <h3>이용약관</h3>
                                <div class="wizard-content">
                                    <h3 class="text-bold">약관 동의 (필수)</h3>
                                    <div class="form-group mt-5">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" name="agree1" id="agree1" class="custom-control-input">
                                            <label class="custom-control-label" for="agree1" style="font-size:18px;">이용약관에 동의합니다.</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" name="agree2" id="agree2" class="custom-control-input">
                                            <label class="custom-control-label" for="agree2" style="font-size:18px;">개인정보 수집 및 이용에 동의합니다.</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" name="agree3" id="agree3" class="custom-control-input">
                                            <label class="custom-control-label" for="agree3" style="font-size:18px;">아래 서비스 이용사항에 동의합니다.</label>
                                        </div>
                                    </div>
                                    <p> · 이벤트에 해당하는 요금제의 경우 최초 결제 시 포인트가 적용되며, 다음 달 부터 정상 요금으로 자동 청구됩니다.
                                        <span class="block">· 드라이 클리닝 품목의 경우, 의류 품목에 따라 계산 됩니다.</span>
                                        <span class="block">· 웰컴키트는 6주 동안 이용내역이 없거나, 서비스 해지 시 고객센터에 반납이 필요하며, 고객 부주의 및 귀책 등으로 반납되지 않을 시 5만원 비용 부과됩니다.</span>
                                        <span class="block">· 이용기간내 사용하지 못한 품목은 이월 및 환불되지 않습니다.</span>
                                        <span class="block">· 결제 21일 이내 이용내역이 없으면 결제취소 가능합니다.</span>
                                    </p>
                                </div>
                                <!--end: Step 3-->
                            </form>
                            <!--end: Wizard 1-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- end: Body Inner -->
<jsp:include page="footer.jsp" />

<!-- Scroll top -->
<a id="scrollTop"><i class="icon-chevron-up"></i><i class="icon-chevron-up"></i></a>

<!--Plugins-->
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js/apply.js"></script>
<script src="${pageContext.request.contextPath }/js/plugins.js"></script>
<script src="${pageContext.request.contextPath }/js/functions.js"></script>
<script src="${pageContext.request.contextPath }/js/script.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.steps.min.js"></script>

<script>
    $('#wizard1').steps({
        headerTag: 'h3',
        bodyTag: '.wizard-content',
        autoFocus: true,
        enableAllSteps: true,
        titleTemplate: '<span class="number">#index#</span><span class="title">#title#</span>',
    });

    $('.wizard').find(".actions ul > li > a").addClass("btn");
</script>

</body>
</html>