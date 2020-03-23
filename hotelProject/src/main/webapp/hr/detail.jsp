<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사원정보</h2>
<table class="tableForm">
	<tr>
		<td>사원번호</td>
		<td>${emp.empNo }</td>
	</tr>
	<tr>
		<td>부서</td>
		<td></td>
	</tr>
	<tr>
		<td>직급</td>
		<td></td>
	</tr>
	<tr>
		<td>사원명</td>
		<td>${emp.empName }</td>
	</tr>
	<tr>
		<td>연락처</td>
		<td>${emp.empTel }</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>${emp.empEmail }</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>${emp.empId }</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>${emp.empAddr }</td>
	</tr>
	<tr>
		<td>입사일</td>
		<td>${emp.empDate }</td>
	</tr>
	<c:if test="${empty emp.passState }">
	<tr>
		<td>경력사항</td>
		<td>${emp.empCarr }</td>
	</tr>
	<tr>
		<td>자격증</td>
		<td>${emp.empCerti }</td>
	</tr>
	</c:if>
	<tr>
		<td>승진등급</td>
		<td></td>
	</tr>
	<tr>
		<td>승진점수</td>
		<td></td>
	</tr>
</table>
<button onclick="location.href='../modify?empNo=${emp.empNo }'">정보수정</button>
<button onclick="location.href='../list'">메인으로</button>
</body>
</html>