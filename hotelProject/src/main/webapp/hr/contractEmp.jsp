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
<table id="tableForm">
	<tr>
		<td>계약번호</td>
		<td></td>
	</tr>
	<tr>
		<td>사원번호</td>
		<td></td>
	</tr>
	<tr>
		<td>성명</td>
		<td></td>
	</tr>
	<tr>
		<td>급여</td>
		<td></td>
	</tr>
	<tr>
		<td>직급</td>
		<td></td>
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
</body>
</html>