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
<%-- reqeust 영역에 적절한 attributes를 추가 --%>
<%
request.setAttribute("name", "donald");
request.setAttribute("age", 30);
request.setAttribute("height", 190.5);
request.setAttribute("width", 300.3333);

%>
<jsp:forward page="06to.jsp"></jsp:forward>
</body>
</html>


