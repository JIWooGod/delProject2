<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<title>그랜드힐스턴</title>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
<meta http-equiv="imagetoolbar" content="no">
<meta name="description" content="전주 그랜드힐스턴 호텔, 한옥마을 숙소, 호텔예식, 연회장">
<meta property="og:type" content="site">
<meta property="og:title" content="전주 그랜드힐스턴 호텔">
<meta property="og:description" content="전주 그랜드힐스턴 호텔, 한옥마을 숙소, 호텔예식, 연회장">
<meta name="naver-site-verification" content="cc3dde0d2df0f4ec7f426916e285f0c31566049e"/>
</head>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../js/rolling.css" media="screen">
<link rel="stylesheet" href="../css/slide.css" media="screen">
<script src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/jquery.rolling.js"></script>
<script src="../js/jquery.flexslider.js"></script>
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


		<!--상단메뉴시작-->
		<jsp:include page="../includePage/Header.jsp" flush="true" /> 
		<!--상단메뉴끝-->


<div id='content_wrapper'>
	
		<div id='sub_slide'>
		<li class='slide1'>&nbsp;</li>
	</div>
	<div class='sub_menu'>
		<div class='box'>
		<span class='subMENUon'><a href='about'>인사말</a></span><span class='subMENUout'><a href='about2'>오시는 길</a></span>		</div>

		<div class='tl'>
			<div class='line'></div>
			<div class='title'>오시는 길</div>
			<div class='line'></div>
		</div>
	</div>

	<div class='content_box'>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=n6nMPbACvejKckb7iLmz&submodules=geocoder"></script>


    <div class='sub_detail'>
<span>호텔 델루나</span><br>
Tel : 호텔 02-6340-2233, <br>
주소 : 서울시 영등포구 양산로 53 호텔 델루나
</div>
<style>
    .zoom_enable {position:absolute;border:1px solid #de4b18;margin-top:10px;padding:5px 10px;z-index:9999;margin-left:10px;background:#de4b18;color:#FFFFFF;font-weight:bold;}
    .zoom_disable {position:absolute;border:1px solid #7d7d7d;margin-top:10px;padding:5px 10px;z-index:9999;margin-left:10px;background:#7d7d7d;color:#FFFFFF;font-weight:bold;}
</style>
<div class='sub_img'>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3164.2506066677875!2d126.88671881567886!3d37.52558937980557!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9e92ba9c8b2b%3A0xa13424f63fc38481!2z7ISc7Jq47Yq567OE7IucIOyYgeuTse2PrOq1rCDslpHtj4nrj5kz6rCAIOyWkeyCsOuhnCA1Mw!5e0!3m2!1sko!2skr!4v1584079954255!5m2!1sko!2skr" width="1200" height="687" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</div>
<!--
<div class='sub_aboutinfo'>

	<div class='tl'><span>자가용<br>이용시</span></div>
	<div class='con'>
		
	</div>
	<div class='line_height30'></div>
	<div class='line_box'></div>
	<div class='line_height30'></div>
	<div class='tl'><span>대중교통<br>이용시</span></div>
	<div class='con'>

	</div>
	<div class='line_height30'></div>
	<div class='line_box'></div>
	<div class='line_height30'></div>
	<div class='tl'><span>한옥마을에서<br>출발시</span></div>
	<div class='con'>

	</div>
	<div class='line_height30'></div>
	<div class='line_box'></div>
	<div class='line_height30'></div>
</div>
<div class='line_height30'></div>
-->
	<div class='line_height50'></div>
		</div>
</div>

<!-- 하단메뉴 시작 -->
<jsp:include page="../includePage/Footer.jsp" flush="true" /> 