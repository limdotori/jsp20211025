<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!-- att1에 value1을 넣었다는 것.서로다른 request
연결해주기 위해서 사용하는 것 session -->
<%
request.setAttribute("attr1", "value1");
session.setAttribute("attr2", "value2");

response.sendRedirect("18to-session.jsp");
%>