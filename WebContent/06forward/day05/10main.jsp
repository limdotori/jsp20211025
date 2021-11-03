<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>


<%
String code = request. getParameter("code");
%>
<%
if ("food".equals(code)){
	String[] obj = {"apple","banana","melon"};
	request.setAttribute("food", obj);
	
%>
<jsp:forward page="10pagea.jsp"></jsp:forward>

<%
}else if ("song".equals(code)){
	String[] obj1={"butter","solo","cafe"};
	request.setAttribute("song", obj1);
%>
<jsp:forward page="10pageb.jsp"></jsp:forward>
<%
}
%>	