<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<%request.setCharacterEncoding("utf-8");%>

<%
/* String param="param="+URLEncoder.encode("스프링","utf-8");
String location = "14to.jsp";
String loc = location+"?"+"param";
response.sendRedirect(loc); */
%>

<%-- 선생님이 한 방법--%>
<% 
String value = URLEncoder.encode("스프링","utf-8");
response.sendRedirect("1to.jsp?param="+value);
%>