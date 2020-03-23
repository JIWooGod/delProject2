<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="dining/diningcss/style2.css">
<link rel="stylesheet" href="js/rolling.css" media="screen">
<link rel="stylesheet" href="css/slide.css" media="screen">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/jquery.rolling.js"></script>
<script src="js/jquery.flexslider.js"></script>
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
		<!--상단메뉴시작-->
		<jsp:include page="../includePage/Header.jsp" flush="true" /> 
		<!--상단메뉴끝-->
		
<div id='content_wrapper'>
	
		<div id='sub_slide'>
		<li class='slide5'>&nbsp;</li>
	</div>

	<div class='sub_menu1'>
		<div class='box'>
			<span class='subMENUout'><a href='dining1'>궁궐</a></span>
			<span class='subMENUout'><a href='dining2'>황룡</a></span>
			<span class='subMENUon'><a href='dining3'>더 델루나</a></span>
			<span class='subMENUout'><a href='dining4'>보나베띠</a></span>
			<span class='subMENUout'><a href='dining5'>슈크르 앤 미엘</a></span>
			<span class='subMENUout'><a href='dining6'>더 블루</a></span>
		</div>

		<div class='tl'>
			<div class='line'></div>
			<div class='title'>더 델루나</div>
			<div class='line'></div>
		</div>
	</div>

	<div class='content_box'>
	<div class='sub_detail'>
</div>
<div class='sub_room'>
	<!--객실미리보기시작-->
	<div id="main_bn">
		<div class="flexslider">
			<ul class="slides bn_img">
			<li><img src='img/1901.jpg'></li>
			<li><img src='img/1902.jpg'></li>
			<li><img src='img/1903.jpg'></li>
			<li><img src='img/1904.jpg'></li>
			</ul>
		</div>
	</div>
	<!--객실미리보기끝-->
</div>
<div class='sub_hallinfo'>
	<div class='title'>INFORMATION</div>
	<div class='box'>
		<div class='basic'>
			<span>예약상담시간</span> : 09:00 ~ 19:00 &nbsp;&nbsp;&nbsp;&nbsp;
			<span>전화번호</span> : 063-251-8000 &nbsp;&nbsp;&nbsp;&nbsp;
			<span>이메일</span> : gh.1700@daum.net
		</div>
	</div>

</div>
<div class='line_height30'></div>
	<div class='line_height50'></div>
		</div>
</div>

<div id='tail_wrapper'>
	<div class='box'>
		<div class='line_box'></div>
		<div class='line_height20'>&nbsp;</div>

		<div class='menu'>
				<li class='navmenu_ul_li1'>
							<a href='./about_1.html'>ABOUT</a>
							<ul><li><a href='./about_1.html'>인사말</a></li><li><a href='./about_2.html'>오시는 길</a></li></ul>
						</li><li class='navmenu_ul_li2'>
							<a href='./accommodation_1.html'>ACCOMMODATION</a>
							<ul><li><a href='./accommodation_1.html'>비즈니스룸</a></li><li><a href='./accommodation_2.html'>스위트룸(침실)</a></li><li><a href='./accommodation_3.html'>스위트룸(온돌)</a></li></ul>
						</li><li class='navmenu_ul_li3'>
							<a href='./banquethall_1.html'>BANQUET HALL</a>
							<ul><li><a href='./banquethall_1.html'>데이지스</a></li><li><a href='./banquethall_2.html'>그랜드벨라</a></li><li><a href='./banquethall_3.html'>아이리스</a></li><li><a href='./banquethall_4.html'>프리지아</a></li></ul>
						</li><li class='navmenu_ul_li4'>
							<a href='./wedding_1.html'>WEDDING</a>
							<ul><li><a href='./wedding_1.html'>세인트</a></li><li><a href='./wedding_2.html'>그레이스</a></li><li><a href='./wedding_3.html'>더채플</a></li><li><a href='./wedding_4.html'>셀레나</a></li></ul>
						</li><li class='navmenu_ul_li5'>
							<a href='./facilities_1.html'>Dining&Bar</a>
							<ul><li><a href='./facilities_1.html'>레스토랑</a></li><li><a href='./facilities_2.html'>커피숍</a></li><li><a href='./facilities_3.html'>Bar</a></li></ul>
						</li><li class='navmenu_ul_li6'>
							<a href='./reservation_1.html'>RESERVATION</a>
							<ul><li><a href='./reservation_1.html'>실시간 예약</a></li></ul>
						</li>		</div>	

		<div class='line_height40'>&nbsp;</div>
		<div class='line_box'></div>
		<div class='line_height20'>&nbsp;</div>

		<div class='logo'>
			<img src='./img/t_logo.png'>
		</div>
		<div class='content'>
			<div class='company'>
				<a href='/about_1.html'>호텔소개</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href='/terms_1.html'>이용약관</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href='/terms_2.html'>개인정보취급방침</a>
			</div>
			<div class='copy'>
				상호 : 그랜드힐스턴 <span>|</span> 대표 : 이순자 <span>|</span> 사업자등록번호 : 128-01-50805<span>|</span> 통신판매업신고 : <br>
				주소 : 전라북도 전주시 완산구 서곡5길 22-5 <span>|</span> 대표전화 : 063-251-8000 <span>|</span> Fax :  063-212-0000<span>|</span> Email : gh.1700@daum.net<br>
				COPYRIGHT © 2018 그랜드힐스턴 ALL RIGHTS RESERVED. 
			</div>
		</div>
		<div class='sns'>
			
		</div>
	</div>
</div>
</body>
</html>