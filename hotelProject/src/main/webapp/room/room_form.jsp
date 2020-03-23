<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/roomStyle.css">
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
		<li class='slide6'>&nbsp;</li>
	</div>

	<div class='sub_menu'>
		

		<div class='tl'>
			<div class='line'></div>
			<div class='title'>객실 등록</div>
			<div class='line'></div>
		</div>
	</div>

	<div class='content_box'>

<div class='line_height30'></div>
<div class='sub_reservation'>
<!-- 객실 정보 시작 -->
	
<!-- 객실 정보 끝 -->
	<div class='line_height50'></div>
	<div class='line_box'></div>
	<div class='line_height30'></div>
    <script language="javascript">
    <!--
    function goNext(){
        var frm = document.writeF;
        frm.submit();
    }
    //-->
</script>
<div class="hs_reservation">
  <div class="hs_reservation_section hs_reservation_box1">
  <form name="roomFrm" method="POST" enctype="multipart/form-data">
    <div class="hs_reservation_left">
        <ul class="hs_reservation_litt">
          <li>
            <strong>호 수</strong>
            <input type="text" id="roomNo" name="roomNo" class="hs_input hs_disabled" >	<!-- 예약 시작일 -->
          </li>
          <li>
            <strong>객실 등급</strong>
            <select name="roomGrade" id="roomGrade" class="select">
            <option value=''>--선택--</option> 
             <option value='standard'>스탠다드</option><option value='deluxe'>디럭스</option>
             <option value='deluxeSuite'>디럭스 스위트</option><option value='royalSuite'>로열 스위트</option>
             <option value='preSuite'>프리미어 스위트</option>
          	</select>
          </li>
          <li>
            <strong>이용료</strong>
             <input type="number" id="roomPrice" name="roomPrice" min = "0" class="hs_input hs_disabled" >
          </li>
          <li>
            <strong>뷰</strong>
            <select class="select" name="roomView" id="roomView">
             <option value=''>--선택--</option> 
             <option value='oceanView'>오션 뷰</option>
             <option value='cityView'>도심 뷰</option>
             </select>
          </li>
          <li>
            <strong>층</strong>
            <select class="select" name="roomLoc" id="roomLoc">
             <option value=''>--선택--</option> 
             <option value='4f'>4 층</option>
             <option value='5f'>5 층 </option>
              <option value='6f'>6 층 </option>
               <option value='7f'>7 층 </option>
                <option value='8f'>8 층 </option>
                 <option value='9f'>9 층 </option>
                  <option value='10f'>10 층 </option>
                   <option value='11f'>11 층 </option>
                    <option value='12f'>12 층 </option>
                     <option value='13f'>13 층 </option>
                      <option value='14f'>14 층 </option>
                       <option value='15f'>15 층 </option>
             </select>
          </li>
        </ul>
    </div>
  
      <div class="hs_reservation_right">
        <ul class="hs_reservation_litt">
          <li>
            <strong>이미지</strong>
            <input type="file" id="roomPic" name="roomPic" class="hs_input hs_disabled" >	
          </li>
   			<li>
          <strong>침대 옵션</strong>
            <select class="select" name="roomBed" id="roomBed">
             <option value=''>--선택--</option> 
             <option value='double'>더블</option>
             <option value='tween'>트윈</option>
              <option value='family'>패밀리 </option>
              
             </select>
          </li>
        </ul>
      </div>
	</form>
  </div>
  <div class="hs_reservation_section hs_reservation_bottom">
    <div class="hs_reservation_btn_set">
      <a href="javascript:roomFrm.submit();" class="hs_reservation_btn_poin" style="color:#FFFFFF;">객실 등록</a>
    </div>
  </div>
</div>
<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>