<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>두번쨰 페이지 내용들!</h2>
<%--02sub.jsp내용이 include directive 사용하여 추가 --%>
<%@ include file = "/03module/day03/02sub.jsp" %>
</body>
</html>