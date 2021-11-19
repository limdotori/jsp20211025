<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<style>
.container{
	background-color: gray;
}
div{
	background-color:aqua;
}
.container-fluid{
	background-color: springgreen;
}
</style>
<title>Insert title here</title>
</head>
<body>
<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium exercitationem nisi nulla officia nobis iure dolor suscipit possimus animi rem molestiae nemo! Eos dolores vero tempora dignissimos ex enim iste.</div>
<!-- .container>lorem -->
<div class="container">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit facilis magnam labore dicta eveniet totam consequatur numquam quibusdam qui a aperiam voluptates rem est cupiditate assumenda laudantium ut impedit perspiciatis.</div>

<div class="container-fluid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique quas nisi impedit eaque soluta officia molestiae eligendi est perspiciatis dicta magni molestias amet libero eveniet eum recusandae ratione reprehenderit iusto.</div>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

</body>
</html>


