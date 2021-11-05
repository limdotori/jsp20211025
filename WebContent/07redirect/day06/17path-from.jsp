<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<%

//절대 경로 사용하여 17path-to.jsp로 리디렉션 하는 코드 작성
String location = request.getContextPath()+"/07redirect/day06/17path-to.jsp";
response.sendRedirect(location);
%>