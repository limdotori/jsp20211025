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

<form>
<input name="num">
<input type="submit">
</form>

<%
List<String> list = new ArrayList<>();
list.add("apple");
list.add("phone");
list.add("coffee");
list.add("computer");
%>

<%
String num = request.getParameter("num");
%>


<%-- num이 0~3이면 --%>
<%-- num번 상품은 apple / phone / coffee / computer 입니다. --%>

<%-- 그렇지 않으면 (null 이거나 0~3이 아니면) --%>
<%-- 해당 상품이 존재하지 않습니다. --%>

<p>
<%
if (num == null) {
	out.print("해당 상품이 존재하지 않습니다.");
} else {
	switch (num) {
		case "0":
		case "1":
		case "2":
		case "3":
			int index = Integer.parseInt(num);
			out.print(index + "번 상품은 " + list.get(index) + "입니다.");
			break;
			
		default:
		out.print("해당 상품이 존재하지 않습니다.");
	}
}
%>
</p>
</body>
</html>














