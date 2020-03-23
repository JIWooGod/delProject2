<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			animation : "slide",
			controlsContainer : $(".custom-controls-container"),
			customDirectionNav : $(".custom-navigation a"),
			slideshowSpeed : 4000
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
				<div class='title'>RESERVATION</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>

			<div class='line_height30'></div>

			<div class='sub_reservation'>
				<!-- 객실 정보 시작 -->

				<c:if test="${room.roomGrade eq 'standard' }">
					<div class='tl'>스탠다드</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'deluxe' }">
					<div class='tl'>디럭스</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'deluxeSuite' }">
					<div class='tl'>디럭스 스위트</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'royalSuite' }">
					<div class='tl'>로열 스위트</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'preSuite' }">
					<div class='tl'>프리미어 스위트</div>
				</c:if>



				<div class='con'>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1">
					<div class="hs_reservation_left">
					<table>
						<tr align="center">
							<td><c:forTokens items="${room.roomPic }" delims="-"
									var="roomPic" varStatus="status">
									<c:if test="${status.index == 0}">
										<img src="room/update/${roomPic }" width = "500px"/>
									</c:if>
								</c:forTokens></td>
					
						</tr>
					</table>
					</div>
						<div class="hs_reservation_left">
							<ul class="hs_reservation_litt">
									<li><strong>KRW</strong> 
										 &nbsp; ${room.roomPrice}~ &nbsp;[1박,1객실]
										</li>
									
									
								</ul>
						</div>
				</div>
				</div>
				</div>
				<!-- 객실 정보 끝 -->
				<div class='line_height50'></div>
				<div class='line_box'></div>
				<div class='line_height30'></div>
				<script language="javascript">
				<!--
					function goNext() {
						var frm = document.writeF;
						frm.submit();
					}
				//-->
				</script>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1">

						<div class="hs_reservation_left">
							<div id="from">
								<h3 class="hs_reservation_title">체크인</h3>
							</div>
							<div id="to">
								<h3 class="hs_reservation_title">체크아웃</h3>
							</div>
						</div>
						<form name="writeF" method="POST" action="reservationStep2">
							<div class="hs_reservation_right">
								<ul class="hs_reservation_litt">
									<li><strong>체크인</strong> <input type="text" id="fromdate"
										name="fromdate" class="hs_input hs_disabled" readonly>
										<!-- 예약 시작일 --></li>
									<li><strong>체크아웃</strong> <input type="text" id="todate"
										name="todate" class="hs_input hs_disabled" readonly> <!-- 예약 종료일 -->
									</li>
									<li><strong>객실수</strong> <select name="roomCount" id="roomCount"
										class="hs_input">
											<option value='1'>1</option>
											<option value='2'>2</option>
											<option value='3'>3</option>
											<option value='4'>4</option>
											<option value='5'>5</option>
											<option value='6'>6</option>
											<option value='7'>7</option>
											<option value='8'>8</option>
											<option value='9'>9</option>
											<option value='10'>10</option>
									</select></li>
									<li><strong>투숙인원</strong> <select class="hs_input"
										name="people" id="people">
											<option value='1'>1</option>
											<option value='2'>2</option>
											<option value='3'>3</option>
											<option value='4'>4</option>
											<option value='5'>5</option>
											<option value='6'>6</option>
											<option value='7'>7</option>
											<option value='8'>8</option>
											<option value='9'>9</option>
											<option value='10'>10</option>
									</select> <span class="hs_reservation_deco" style="display: none;">최소인원
											초과시 <b>1인당 20,000(vat포함)</b>이 추가됩니다.
									</span></li>
									<li><strong>숙박일</strong> <input type="text" name="days"
										class="hs_input hs_disabled" id="wr_3" name="wr_3" readonly
										style="width: 30px;"></li>
									<li><input type = "hidden" value = "${room.roomGrade }"></li>
									
								</ul>
							</div>
						</form>

					</div>
					<div class="hs_reservation_section hs_reservation_bottom">
						<div class="hs_reservation_btn_set">
							<a href="javascript:writeF.submit();" class="hs_reservation_btn_poin"
								style="color: #FFFFFF;">다음단계</a>
						</div>
					</div>
				</div>
				<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js"
					type="text/javascript"></script>
				<script>
					$(function() {
						var tmr = new Date();
						tmr.setDate(tmr.getDate());
						//tmr.setDate(tmr.getDate()+1);	//오늘은 예약이 안되므로 내일 날자 세팅
						var tmr2 = new Date();
						tmr2.setDate(tmr.getDate());
						//tmr2.setDate(tmr.getDate()+1);	//오늘은 예약이 안되므로 내일 날자 세팅
						$("#from").datepicker(
								{
									changeMonth : false,
									showMonthAfterYear : true,
									yearSuffix : ' .',
									numberOfMonths : 1,
									defaultDate : 0,
									minDate : "+0",
									maxDate : "+2y",
									altField : "#fromdate",
									altFormat : "yy-mm-dd",
									changeYear : false,
									monthNames : [ '1', '2', '3', '4', '5',
											'6', '7', '8', '9', '10', '11',
											'12' ],
									onSelect : function(selectedDate) {
										var nextday = new Date(selectedDate);
										nextday.setDate(nextday.getDate() + 1);
										$("#to").datepicker("option",
												"minDate", nextday);
										$("#to").datepicker("option",
												"defaultDate", +1);
									}
								});

						$("#to").datepicker(
								{
									changeMonth : false,
									numberOfMonths : 1,
									showMonthAfterYear : true,
									yearSuffix : ' .',
									defaultDate : +1,
									altField : "#todate",
									altFormat : "yy-mm-dd",
									monthNames : [ '1', '2', '3', '4', '5',
											'6', '7', '8', '9', '10', '11',
											'12' ],
									changeYear : false,
									minDate : "+1d",
									maxDate : "+2y +1m",
									onSelect : function(selectedDate) {
										if (getDateDiff($("#todate").val(), $(
												"#fromdate").val()) > 30) {
											alert('장기투숙은 고객센터로 문의바랍니다.');
										}
										$("#wr_3").val(
												getDateDiff($("#todate").val(),
														$("#fromdate").val()));
										$("#wr_1").val($("#fromdate").val());
										$("#wr_2").val($("#todate").val());
									}
								});
						$("#wr_3").val(
								getDateDiff($("#todate").val(), $("#fromdate")
										.val()));
					});
					// 날짜 차이 계산 함수
					// date1 : 기준 날짜(YYYY-MM-DD), date2 : 대상 날짜(YYYY-MM-DD)
					function getDateDiff(date1, date2) {
						var arrDate1 = date1.split("-");
						var getDate1 = new Date(parseInt(arrDate1[0]),
								arrDate1[1] - 1, arrDate1[2]);
						var arrDate2 = date2.split("-");
						var getDate2 = new Date(parseInt(arrDate2[0]),
								arrDate2[1] - 1, arrDate2[2]);

						var getDiffTime = getDate1.getTime()
								- getDate2.getTime();

						return Math.floor(getDiffTime / (1000 * 60 * 60 * 24));
					}
					function reset() {
						var nextday = new Date();
						//alert(nextday);
						//$("#from").datepicker( "option", "defaultDate", nextday);
					}

					function step_changer(now, change, mode) { //예약 스텝 변경
						if (mode == "next") {
							if (change == 2) { //step 1에서 2로 넘어갈때
								$("#wr_1").val($("#fromdate").val()); //체크인
								$("#wr_2").val($("#todate").val()); //체크아웃
								var stayday = getDateDiff($("#todate").val(),
										$("#fromdate").val());
								$("input[name='wr_3']").text(
										stayday + "박 " + stayday + "일"); //고객정보입력-투숙기간
								$("#stayday").text(stayday); //고객정보입력-투숙기간
								$("#roomcnt").text(
										$("select[name=wr_9]").val() + "실"); //객실수
								$("#person").text(
										$("select[name=wr_4]").val() + "인"); //투숙인원
								$("#stepbar").children().attr("src",
										"/img/sub06/reserve02.gif");

								$("#step" + now).slideUp(500);
								$("#step" + change).slideDown(500); //화면전환
							} else if (change == 3) { //step 2에서 3로 넘어갈때
								$("#roomcnt_st4").val(
										$("select[name=wr_9]").val()); //객실수
								$("#person_st4").text(
										$("select[name=wr_4]").val()); //투숙인원
								$("#roomname").val(
										$("#wr_8:checked").attr("roomname")); //객실타입
								$("#pkgname").val(
										$("#wr_10:checked").attr("pkgname")); //패키지명
								$("#stepbar").children().attr("src",
										"/img/sub06/reserve03.gif");

								if ($("#wr_8:checked").val() > 0) {
									$("#step" + now).slideUp(500);
									$("#step" + change).slideDown(500); //화면전환
								} else {
									alert("객실을 선택하세요.");
								}
							}

						} else if (mode == "prev") {
							$("#step" + now).slideDown(500);
							$("#step" + change).slideUp(500);
						}
					}
				</script>
			</div>
			<div class='line_height50'></div>
		</div>
	</div>

	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>