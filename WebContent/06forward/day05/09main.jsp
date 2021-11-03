<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<%
String pageCode = request.getParameter("code");

switch(pageCode){
case "a":
	%>
	<jsp:forward page="09pagea.jsp"/>
	<%--절대경로 : /06forward/09pagea.jsp --%>
	<%
	break;
case "b":
	%>
	<jsp:forward page ="/WEB-INF/view/06forward/day05/09pageb.jsp"/>
		<%
	break;
}
%>