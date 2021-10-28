<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
	<input type="checkbox" name="movie" id="" value="action" checked>액션
	<input type="checkbox" name="movie" id="" value="family" checked>가족
	<input type="checkbox" name="movie" id="" value="kids" checked>어린이
	<hr>
	<input type="radio" name="color" id="" value="red">빨강
	<input type="radio" name="color" id="" value="yellow">노랑 
	<input type="radio" name="color" id="" value="blue">파랑
	<br>
	<input type="submit" value="전송">
</form>
<hr>
<!-- 자바 코드로 movie 값들과 color 값 출력 -->
<p>좋아하는 영화</p>
<ul>
<%
String[] movies = request.getParameterValues("movie");
if(movies !=null){
	for(String movie : movies){
		out.print("<li>"+movie+"</li>");
	}
}
%></ul>
<%
String color = request.getParameter("color");
%>

<p>좋아하는 색 : <%=color %> </p>
<div style="width:100px; height:100px;
border:2px solid black; background-color:<%=color %>">
</div>
</body>
</html>