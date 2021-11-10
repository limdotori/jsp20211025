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
<h1>forward from.jsp</h1>
<%--주소창에는 from을 보냇지만 보이는건 to가 보이고,
위에 쓰여진 내용은 없는 것 취급 --%>

<%
request.setAttribute("reqAttr1", 3.141592);
%>
<jsp:forward page="05forward-to.jsp"></jsp:forward>

</body>
</html>


