<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/hotelProject/js/contractSign.js"></script>
</head>
<body>
<h2>계약서</h2>
<form action="#">
<table id="tableForm">
	<tr>
		<td>분류</td>
		<td>
			<select>
				<option value="">선택하시오</option>
				<option value="200">필수강좌</option>
				<option value="300">선택강좌</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>강좌명</td>
		<td><input type="text" name="lecName" placeholder="강좌명을 입력하시오"/></td>
	</tr>
	<tr>
		<td>강사번호</td>
		<td></td>
	</tr>
	<tr>
		<td>성명</td>
		<td></td>
	</tr>
	<tr>
		<td>급여</td>
		<td><input type="number" min="0"/>원</td>
	</tr>
	<tr>
		<td>단위일수</td>
		<td>
			<input type="number" min="1" max="7" id="unitNum"/>일
			<div id="error">* 1~7 사이의 숫자를 입력하시오</div>
		</td>
	</tr>
	<tr>
		<td>계약일자</td>
		<td></td>
	</tr>
	<tr>
		<td>서명</td>
		<td>* 아래 서명란에 서명하시오 <button onclick="javascript:onClear();">다시하기</button><br/>
			<canvas id="drawCanvas" width="300" height="150" style=" position: relative; border: 1px solid #000;"></canvas>
    		<img id="myImage" style="display:none"/>
		</td>
	</tr>
</table>
<input type="submit" value="계약하기"/>
<button onclick="javascript:cancel()">취소</button>
</form>
</body>
</html>