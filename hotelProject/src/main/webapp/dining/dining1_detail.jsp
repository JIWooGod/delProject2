<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="js/rolling.css" media="screen">
<link rel="stylesheet" href="css/slide.css" media="screen">
<script type="text/javascript">
/* 팝업
	function popup(){
		var url = "d1reservation";
		var name = "궁궐 예약";
		var option = "width = 500, height = 600, top = 100, left = 200, location = no";
		window.open(url, name, option);
	}
*/

function popup(){
	location.href="d1reservation";
}
</script>
</head>
<body>

<div align="center">
	<img alt="" src="dining/img/dining1detail.png">
</div>


<!--  -->
<div id='content_wrapper'>

	<div class='content_box'>
<div class='sub_roominfo'>
	<div class='box'>
		<div class='time'><span>Open</span> 09:00 ~ <span>Close</span> 22:00</div>
		<div class='basic'>
			<span>좌석 수</span> n개<br>
			<span>좌석 타입</span> 2~8석 완비<br>
			<span>레스토랑 위치</span> Where<br>
		</div>
		<div class='tel'>
			<span>예약 및 이용문의</span><br>
			예약상담시간 : 09:00 ~ 19:00<br>
			전화번호 : 02-000-0000<br>
			이메일 : wltjq367@gmail.com
		</div>
	</div>
	<div class='line_height40'></div>

	<div class='tl'>MENU</div>
	<div class='con'>
		<li>menu1</li>
		<li>menu2</li>
		<li>menu3</li>
	</div>
	<div class='line_height30'></div>
	<div class='line_box'></div>
	<div class='line_height30'></div>
	<div class='tl'>예약안내</div>
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

<a href='../room/reservation_1.jsp'>
<!-- 예약하기버튼 다시만들거야  
<div class='sub_room_reservation'>
	예약하기
</div>
-->
</a>
	<div class='line_height50'></div>
		</div>
</div>
<div align="center">
	<button onclick="javascript:popup()">예약하기</button>
</div>
</body>
</html>