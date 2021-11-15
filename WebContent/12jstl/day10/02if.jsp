<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>
<h1>jstl core if</h1>

<!--앞에 c붙이는 이유는 위에 prefix이름이기때문에!   -->
<c:if test="">
	<p>출력됨1</p>
</c:if>


<c:if test="true">
	<p>출력됨2 true 키워드</p>
</c:if>

<!--자바코드는 최대한 사용하지않는 것을 추천한다.  -->
<c:if test ="<%= 3==3 %> ">
	<p>출력됨3  java expression</p>
</c:if>

<c:if test ="${3==3 } ">
	<p>출력됨4  expression language(el)</p>
</c:if>
</body>
</html>














