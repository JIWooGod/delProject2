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
</head>
<body>
<h2>채용공고</h2>
<p>호텔 델루나에서 채용하고 있음. 신청ㄱㄱ</p>
<button class="btn" onclick='location.href="personnel/apply?job=staff"'>직원 지원하기</button>
<button class="btn" onclick='location.href="personnel/apply?job=teacher"'>강사 지원하기</button>
</body>
</html>