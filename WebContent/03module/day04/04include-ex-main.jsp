<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<%-- sub.jsp 위치 --%>
<%-- include 액션 태그 사용하기 --%>
<%-- 절대경로를 사용하기 --%>
<jsp:include page="/03module/day04/04include-ex-sub.jsp"></jsp:include>
<div>
<h1>main 페이지 컨텐츠</h1>
<a href="https://www.yahoo.com"> 야후1 </a> <br>
<a href="https://www.yahoo.com"> 야후2</a>
</div>

</body>
</html>