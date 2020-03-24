<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="dining/diningcss/reservation.css">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(function(){
	$(document).ready(function(){
		$('select[name=resTime]').change(function() {
			if($(this).val()=="0"){
				$('#resTimeVal').val("");
			} else {
				$('#resTimeVal').val($(this).val());
				$("#resTimeVal").attr("readonly", true);
			}
		});
		
		$('#resDate').change(function (){
		    var date = $('#resDate').val();
		    $('#resDateVal').val(date);
		});
		
		$('select[name=emailSel]').change(function() {
			if($(this).val()=="0"){
				$('#emailVal').val("");
				$("#emailVal").attr("readonly", false);
			} else {
				$('#emailVal').val($(this).val());
				$("#emailVal").attr("readonly", true);
			}
		});
	});
});
</script>
</head>
<body>
<header>
	<h2 align="center">궁궐</h2>
	<hr width="1150px">
</header>
<div align="center">
<div style="width: 50%; float: left;" align="center">
<div style="font-size: 11px; color:#474a4785; width: 400px;">
입력하신 연락처(전화/문자/이메일)로 예약 확정 여부를 안내드리오니, 예약 접수 시 다시 한번 확인 부탁드립니다.
예약 변경 및 취소 시 레스토랑으로 연락하여주시기 바랍니다. 8인 이상 단체 및 룸 예약 시 전화 문의 부탁드립니다.
</div>
<br />
*필수입력사항
<hr style="margin: 5px;" width="400px">
<form action="" method="post">
	<div>
		<table class="resTbl" style=" border-bottom-width: 5px;">
			<tr>
				<td>*예약날짜</td>
				<td><input type="date" id="resDate" /></td>
			</tr>
			<tr>
				<td>*시간</td>
				<td>
					<select id="resTime" name="resTime">
						<option value="0">시간을 선택하세요</option>
						<option value="오후  12:00">12:00</option>
						<option value="오후  12:30">12:30</option>
						<option value="오후  13:00">13:00</option>
						<option value="오후  13:30">13:30</option>
						<option value="오후  14:30">14:30</option>
						<option value="오후  15:00">15:00</option>
						<option value="오후  15:30">15:30</option>
						<option value="오후  16:00">16:00</option>
						<option value="오후  16:30">16:30</option>
						<option value="오후  17:00">17:00</option>
						<option value="오후  17:30">17:30</option>
						<option value="오후  18:00">18:00</option>
						<option value="오후  18:30">18:30</option>
						<option value="오후  19:00">19:00</option>
						<option value="오후  19:30">19:30</option>
						<option value="오후  20:00">20:00</option>
						<option value="오후  20:30">20:30</option>
						<option value="오후  21:00">21:00</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>*인원</td>
				<td>
					<select>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>*예약자 성함</td>
				<td><input type="text" size="10" /></td>
			</tr>
			<tr>
				<td>*전화번호</td>
				<td><input type="text" size="10" /></td>
			</tr>
			<tr>
				<td>*이메일</td>
				<td><input type="text" size="10" />@<input type="text" size="10" id="emailVal" />
					<select id="emailSel" name="emailSel">
						<option value="0">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="gmail.com">gmail.com</option>
						<option value="nate.com">nate.com</option>
						<option value="yahoo.co.kr">yahoo.co.kr</option>
					</select>
					</td>
			</tr>
			<tr>
				<td>요청사항</td>
				<td><textarea style="resize: none;" cols="40" rows="5"></textarea></td>
			</tr>
		</table>
		필수적 개인정보 수집 및 이용에 대한 동의<br />
		<textarea rows="6" cols="50" style="resize: none;" readonly="readonly">
신라호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.
1. 필수적인 개인정보의 수집 ㆍ이용에 관한 사항
① 수집ㆍ이용 항목 | 성명,  이메일, 휴대전화번호, 유선 전화번호(자택 또는 직장)
② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공
③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 2년간
※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다.
		</textarea><br />
		<input type="checkbox">동의함
	</div>
</form>
</div>
<div style="width: 50%; float: right;" align="center">
	<table>
		<tr>
			<td>예약하실 날짜</td>
			<td><input type="text" readonly="readonly" id="resDateVal"></td>
		</tr>
		<tr>
			<td>예약하실 시간</td>
			<td><input type="text" id="resTimeVal"></td>
		</tr>
	</table>
	<table>
	<tr>
	<c:forEach items="${ seats }" var="seat" varStatus="status">
			<td>
				<button id="tblBtn" value="0" style="margin: 5px;">
					<img alt='' src='dining/img/tbl2p.png' style="width: 30px; height: 30px">
				</button><br/><p align="center" style="font-size: 9px;">${ seat.rstTbl }번좌석(${ seat.tblKind })</p>
			</td>
			
			<c:if test="${ status.count%5 eq 0 }" >
				<tr></tr>
			</c:if>
	
	
	</c:forEach>
	</tr>
	</table>
	
	<script>
	$("#tblBtn").click(function(){
		if($(this).val() == 0){
			$("#tblBtn").css({backgroundColor:"#23e639"});
			$(this).val(1);
		} else if($(this).val() == 1){
			$("#tblBtn").css({backgroundColor:""});
			$(this).val(0);
		}
	});
	</script>
	<br />
	<button>예약하기</button>
</div>
</div>
</body>
</html>









