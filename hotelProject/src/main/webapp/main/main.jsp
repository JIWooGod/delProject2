<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<title>호텔 델루나</title>
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
<link rel="stylesheet" href="/hotelProject/css/style.css">
<link rel="stylesheet" href="/hotelProject/css/rolling.css" media="screen">
<link rel="stylesheet" href="/hotelProject/css/slide.css" media="screen">
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

	    <!--상단메뉴시작-->
		<jsp:include page="../includePage/Header.jsp" flush="true" /> 
		<!--상단메뉴끝-->


<div id='content_wrapper'>
	
		<div id='main_slide'>
		<div id="main_bn">
		<div class="flexslider">
			<ul class="slides bn_img">
			<li class='slide01'><img src='./img/m_slide01_text.png'></li>
			<li class='slide02'><img src='./img/m_slide02_text.png'></li>
			<li class='slide03'><img src='./img/m_slide03_text.png'></li>
			<li class='slide04'><img src='./img/m_slide04_text.png'></li>
			</ul>
		</div>
		</div>
	</div>
	<script type='text/javascript' src='./js/jquery-ui.js' charset='utf-8'></script>
<link rel='stylesheet' type='text/css' href='./css/jquery-ui.css'/>

		<script language='javascript'>
		$(function() {
		 try{
			 $('.datePicker').datepicker({ 
				 dateFormat: 'yy-mm-dd',
				 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
				 dayNamesMin: ['일','월','화','수','목','금','토'],
				 weekHeader: 'Wk',
				 changeMonth: true, //월변경가능
				 changeYear: true, //년변경가능
				 yearRange:'2020:+2', // 연도 셀렉트 박스 범위(현재와 같으면 1988~현재년)
				 showMonthAfterYear: true, //년 뒤에 월 표시
				 buttonImageOnly: true, //이미지표시  
				 buttonText: '날짜를 선택하세요', 
				 autoSize: false, //오토리사이즈(body등 상위태그의 설정에 따른다)
				 buttonImage: './img/m_reservation_cal.jpg',
				 showOn: 'both' ,//엘리먼트와 이미지 동시 사용
			
        onSelect: function(dateText){
         var curDate = new Date();
         var year = curDate.getFullYear();
         var month = curDate.getMonth() + 1;         
         var day = curDate.getDate();
         
          var cDate  = new Date(year,month,day);
         if(month < 10) month = '0' + month;
         if(day < 10) day = '0' + day;
         
         var curDay =  year + '-' + month + '-' + day;  
         var fromdate = $('#fromdate').val();
         var todate =  $('#todate').val();
         
         
         if(fromdate != ''){
           var fTmp = fromdate.split('-');
         
           var fDate = new Date(parseInt(fTmp[0],10),parseInt(fTmp[1],10),parseInt(fTmp[2],10));
          
                           
           if(fDate <= cDate){
             alert('날짜가 잘못 지정되었습니다.');
             $('#fromdate').val('');
             return;
            }
         }
         if(todate != '' && fromdate != ''){
          var tTmp = todate.split('-');
          var tDate = new Date(parseInt(tTmp[0],10),parseInt(tTmp[1],10),parseInt(tTmp[2],10));
          if(todate <= fromdate){
            alert('날짜가 잘못 지정되었습니다.');
            this.value = '';
          }
          days = tDate.getTime() - fDate.getTime();
          days = days / (1000*60*60*24);
          $('#day_span').html(days);   
          $('#days').val(days);       
         }
        }
       	});
			}catch(e){}
		});
		</script>
		<script language="javascript">
<!--
function chkReserForm(){
    var frm = document._mainF;
    if(frm.fromdate.value == ""){
        alert('체크인 날짜를 선택해주세요.');
        frm.fromdate.focus();
        return;
    }
    if(frm.todate.value == ""){
        alert('체크아웃 날짜를 선택해주세요.');
        frm.todate.focus();
        return;
    }
    frm.submit();
}
//-->
</script>
<form name="_mainF" action="/reservation_2.html" method="post">
    <input type="hidden" name="days" id="days" value="">
<div id='main_reservation'>
	<div class='box'>
		<div class='checkin'>체크인 <span><input type="text" name="fromdate" id="fromdate" value="" class="datePicker" style="border:0;width:80px;background:#FFFFFF;font-size:12px;" placeholder="YYYY/MM/DD" readonly></span></div>
        <div class='checkout'>체크아웃  <span><input type="text" name="todate" id="todate" value="" class="datePicker" style="border:0;width:80px;background:#FFFFFF;font-size:12px;" placeholder="YYYY/MM/DD" readonly></span></div>
		<div class='adult'>객실수<span><input type="text" name="room" id="room" value="1" style="margin-top:-5px;border:0;width:18px;background:#FFFFFF;font-size:13px;" ></span>개 </div>
		<div class='child'>인원<span><input type="text" name="num" id="num" value="2" style="margin-top:-5px;border:0;width:18px;background:#FFFFFF;font-size:13px;" ></span>명</div>
		<div class='kids'>숙박<span id="day_span">0</span>일</div>
		<div class='reservation'><a href="javascript:chkReserForm();" style="color:#FFFFFF;"> 예약하기</a></div>
	</div>
</div>
</form>

<div id='main_service'>
	<div class='box'>
		<li>
			<a href='/accommodation_1.html'>
			<div class='icon'><img src='./img/m_service_icon01.png'></div>
			<div class='tl'>ACCMMODATION</div>
			<div class='stl'>최고의 서비스<br>다양한 객실</div>
			<div class='more'><span>MORE</span></div>
			</a>
		</li>
		<li>
			<a href='/wedding_1.html'>
			<div class='icon'><img src='./img/m_service_icon02.png'></div>
			<div class='tl'>RESTAURANT</div>
			<div class='stl'>단 한번 뿐인 순간<br>평생 기억에 남을 수 있도록<br>도와 드립니다.</div>
			<div class='more'><span>MORE</span></div>
			</a>
		</li>
		<li>
			<a href='/reservation_1.html'>
			<div class='icon'><img src='./img/m_service_icon03.png'></div>
			<div class='tl'>RESERVATION</div>
			<div class='stl'>객실 예약이 필요하신가요?<br>실시간 온라인<br>예약을 이용하세요</div>
			<div class='more'><span>MORE</span></div>
			</a>
		</li>
	</div>
</div>

<div id='main_room'>
	<div class='box'>
		<div class='con'>
			<a href='royalSuite'>
			<div class='tl'>ROYAL SUITE</div>
			<div class='stl'>로열 스위트</div>
			<div class='memo'>편안한 휴식을 즐기실 수 있는 심플한 인테리어로<br>기대 이상의 만족감을 느끼실 수 있습니다.</div>
			<div class='more'><span>MORE</span></div>
			</a>
		</div>
	</div>
</div>

<div id='main_hall'>
	<div class='box'>
		<div class='con'>
			<a href='/banquethall_1.html'>
			<div class='tl'>ONLINE STORE</div>
			<div class='memo'>델루나만의 쉽고 편한 여행준비<br>객실배달과 홈배달 서비스로<br>더 가벼운 여행을 떠나보세요</div>
			<div class='more'><span>MORE VIEW</span></div>
			</a>
		</div>
	</div>
</div>

</div>
<!-- 하단메뉴 시작 -->
<jsp:include page="../includePage/Footer.jsp" flush="true" /> 
