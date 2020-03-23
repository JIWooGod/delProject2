<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./js/rolling.css" media="screen">
<link rel="stylesheet" href="./css/slide.css" media="screen">
<script src="./js/jquery-1.8.3.min.js"></script>
<script src="./js/jquery.rolling.js"></script>
<script src="./js/jquery.flexslider.js"></script>
<script>
$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "slide",
	controlsContainer: $(".custom-controls-container"),
	customDirectionNav: $(".custom-navigation a"),
	slideshowSpeed :4000
  });
});
</script>
<body>
<jsp:include page="../includePage/Header.jsp" flush="true" /> 
<div id='content_wrapper'>
	
		<div id='sub_slide'>
		<li class='slide2'>&nbsp;</li>
	</div>

	<div class='sub_menu'>
		<div class='box'>
		<span class='subMENUout'><a href='standard'>스탠다드</a></span><span class='subMENUout'><a href='deluxe'>디럭스</a></span><span class='subMENUout'><a href='deluxeSuite'>디럭스 스위트</a></span><span class='subMENUon'><a href='royalSuite'>로열 스위트</a></span><span class='subMENUout'><a href='preSuite'>프리미어 스위트</a></span>			</div>

		<div class='tl'>
			<div class='line'></div>
			<div class='title'>로열 스위트</div>
			<div class='line'></div>
		</div>
	</div>

	<div class='content_box'>
	<div class='sub_detail'>
안락한 휴식과 프라이빗한 사교를 즐기기에 최적화된 로열 스위트는 2개의 침실과 거실과 모던한 디자인의 바 테이블로 이루어진 객실입니다.
</div>
<div class='sub_room'>
	<!--객실미리보기시작-->
	<div id="main_bn">
		<div class="flexslider">
			<ul class="slides bn_img">
			<li><img src='./room/img/royal1.jpg'></li>
			<li><img src='./room/img/royal2.jpg'></li>
			<li><img src='./room/img/royal3.jpg'></li>
			<li><img src='./room/img/royal4.jpg'></li>
			<li><img src='./room/img/royal5.jpg'></li>
			
			</ul>
		</div>
	</div>
	
</div>
<div class='sub_roominfo'>
	<div class='title'>INFORMATION</div>
	<div class='box'>
		<div class='time'><span>Check-in</span> 14:00 ~ <span>Check-out</span> 12:00</div>
		<div class='basic'>
			<span>객실크기</span> 51.93m², 59.93m²<br>
			<span>기준인원</span> 4명<br>
		</div>
		<div class='tel'>
			<span>예약 및 이용문의</span><br>
			예약상담시간 : 09:00 ~ 19:00<br>
			전화번호 : 010-2816-0073<br>
			이메일 : jaehunb350@gmail.com
		</div>
	</div>
	<div class='line_height40'></div>

	<div class='tl'>편의시설</div>
	<div class='con'>
		<li>* 유/무선 인터넷</li>
		<li>* TV</li>
		<li>* 헤어 드라이기</li>
		<li>* 샴푸, 비누</li>
		<li>* 1회용 칫솔</li>
		<li>* 수건</li>
		<li>* 목욕 가운</li>
		<li>* 에어컨</li>
	</div>
	<div class='line_height30'></div>
	<div class='line_box'></div>
	<div class='line_height30'></div>
	<div class='tl'>취소규정</div>
	<div class='con'>
		체크인 3일 전 취소: 100% 환불<br>
		체크인 2일 전 취소: 1박 요금의 30% 수수료 부과<br>
		체크인 1일 전 취소: 1박 요금의 50% 수수료 부과<br>
		체크인 당일 및 노쇼: 예약 건의 1박 요금 100% 부과
	</div>
	<div class='line_height30'></div>
	<div class='line_box'></div>
	<div class='line_height30'></div>
</div>
<div class='line_height30'></div>

<a href='reservation?room=royalSuite'>
<div class='sub_room_reservation'>
	실시간 예약하기
</div>
</a>
	<div class='line_height50'></div>
		</div>
</div>

<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>