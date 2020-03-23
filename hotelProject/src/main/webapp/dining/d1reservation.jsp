<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="dining/diningcss/reservation.css">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
<header>
	<h2 align="center">궁궐</h2>
	<hr width="400px">
</header>
<div align="center">
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
				<td><input type="date" /></td>
			</tr>
			<tr>
				<td>시간</td>
				<td>
					<select>
						<option>12:00</option>
						<option>12:30</option>
						<option>13:00</option>
						<option>13:30</option>
						<option>14:30</option>
						<option>15:00</option>
						<option>15:30</option>
						<option>16:00</option>
						<option>16:30</option>
						<option>17:00</option>
						<option>17:30</option>
						<option>18:00</option>
						<option>18:30</option>
						<option>19:00</option>
						<option>19:30</option>
						<option>20:00</option>
						<option>20:30</option>
						<option>21:00</option>
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
				<td><input type="text" size="10" />@<input type="text" size="10" />
					<select>
						<option>직접입력</option>
						<option>naver.com</option>
						<option>hanmail.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
						<option>yahoo.co.kr</option>
					</select>
					</td>
			</tr>
			<tr>
				<td>*요청사항</td>
				<td><textarea style="resize: none;" cols="40" rows="5"></textarea></td>
			</tr>
		</table>
		필수적 개인정보 수집 및 이용에 대한 동의<br />
		<textarea rows="6" cols="50" style="resize: none;">
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
</body>
</html>









