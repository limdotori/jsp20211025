<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<%-- 아이디가 iamuser 이면 main.jsp 컨텐츠를 보여주고
	그렇지 않으면 login-form.jsp으로 리디렉션 하도록 
	코드 작성

 --%>


<%
String userid = request.getParameter("userid");
if(userid!=null&&userid.equals("iamuser")){
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
</body>
</html>
	<%
}else {
	response.sendRedirect("11login-form.jsp");
}
	%>