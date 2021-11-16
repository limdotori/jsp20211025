<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<hr>
<c:url value="25process.jsp" var="addSpringBookUrl">
	<c:param name="title" value="jstl"/>
	<c:param name="writer" value="sons"/>
	<c:param name="price" value="20000"/>
	<c:param name="stock" value="25"/>
	<c:param name="publisher" value="pbu"/>
</c:url>

<a href="${addSpringBookUrl }"> 스프링 책 추가</a>



</body>
</html>


