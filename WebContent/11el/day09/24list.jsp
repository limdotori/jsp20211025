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
<%
List<String> list = new ArrayList<>();
list.add("coffee");
list.add("beer");
list.add("soju");

pageContext.setAttribute("attr1", list);

%>

<p>list : ${attr1 }</p>
<p>list 0 번쨰 : ${attr[0] }</p>
<p>list 1 번쨰 : ${attr[1] }</p>
<p>list 2 번째 : ${attr[2] }</p>
</body>
</html>


