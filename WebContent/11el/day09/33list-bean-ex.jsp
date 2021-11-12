<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>

<%--
Bean04타입의 아이템을 2개 갖는 list를 page영역 attribute로 넣기
여기는 내가 쓴 식
--%>
<%
Bean04 obj1 = new Bean04();
obj1.setNickName("pancake");
obj1.setAge(10);

Bean04 obj2 = new Bean04();
obj2.setNickName("JMT");
obj1.setAge(0);

Bean04[] list= {obj1,obj2};
pageContext.setAttribute("list", list);
%>

<%--선생님이 작성해준 식 --%>
<p>${list[0].nickName } : ${list[0].age }</p>
<p>${list[1].nickName } : ${list[1].age }</p>

</body>
</html>









