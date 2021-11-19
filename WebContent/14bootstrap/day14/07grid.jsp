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

<title>Insert title here</title>
</head>
<body>

<!-- .container-fluid>.row>.col+.col-7+.col -->
<div class="container-fluid">
	<div class="row">
		<div class="col">
			<h2>SIDE MENU</h2>
			<!-- h3*20>lorem1 -->
			<h3>Lorem.</h3>
			<h3>Iure.</h3>
			<h3>Dicta.</h3>
			<h3>Necessitatibus!</h3>
			<h3>Provident.</h3>
			<h3>Ut?</h3>
			<h3>Debitis!</h3>
			<h3>Qui?</h3>
			<h3>Aut.</h3>
			<h3>Mollitia?</h3>
			<h3>Excepturi.</h3>
			<h3>Officiis.</h3>
			<h3>Ut.</h3>
			<h3>Aperiam.</h3>
			<h3>Illum.</h3>
			<h3>Sunt.</h3>
			<h3>Distinctio!</h3>
			<h3>Explicabo.</h3>
			<h3>Facilis.</h3>
			<h3>Ad!</h3>
		</div>
		<div class="col-7">
			<!-- (h1>lorem3^p>lorem)*10 -->
			<h1>Lorem ipsum dolor.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam veritatis laborum iure rerum molestias officia. Voluptate quo itaque officiis sapiente quisquam esse reprehenderit dolorum provident beatae cum aliquid nobis eaque.</p>
			
			<!-- .row>.col*3>lorem -->
			<div class="row">
				<div class="col">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit maiores blanditiis quibusdam eaque cupiditate nisi veritatis! Consectetur reiciendis nulla enim odit non rem tempore laborum ratione omnis harum voluptatem quam.</div>
				<div class="col">Recusandae impedit pariatur iusto ab ipsa reprehenderit omnis quibusdam unde facere hic distinctio doloribus dicta. Repellendus cumque ipsum iusto doloremque laboriosam ab numquam excepturi beatae animi quos tempora aliquid quo?</div>
				<div class="col">Eligendi ducimus culpa quisquam tempora error commodi et a totam quis quaerat pariatur inventore incidunt animi exercitationem sequi fuga ipsum est placeat nesciunt nemo dignissimos. Excepturi laboriosam nesciunt magni iusto!</div>
			</div>
			
			<h1>Sequi corporis aspernatur.</h1>
			<p>Et cum corporis magni id laboriosam nisi consectetur repellat tempore totam dolorum quisquam officia sapiente autem rem beatae natus eum distinctio harum incidunt quam! Itaque inventore eaque cum possimus dolore.</p>
			<h1>Nostrum neque excepturi!</h1>
			<p>Qui asperiores mollitia voluptate praesentium velit eos quibusdam libero est consequatur molestiae sint et quod sed excepturi a voluptatum quidem fugiat suscipit minus delectus! Ratione vel voluptates sapiente maiores facilis!</p>
			<h1>Animi veniam deleniti!</h1>
			<p>Nulla aliquid ducimus delectus maxime recusandae aliquam nostrum ullam qui explicabo unde facere doloremque fugit esse numquam laborum earum sint nemo. Voluptate dicta numquam quis minima recusandae! Quidem quaerat laborum.</p>
			<h1>Nesciunt impedit consequuntur?</h1>
			<p>Facere magnam atque temporibus accusamus ea natus placeat quaerat quisquam aperiam cumque architecto commodi reiciendis dicta dolorum blanditiis corrupti laborum consequatur maiores obcaecati quod saepe reprehenderit autem recusandae iste illum.</p>
			<h1>Sequi id ipsam.</h1>
			<p>Sint quam iste ratione incidunt corporis aut rem debitis minus atque similique optio fugit fuga magnam perferendis adipisci dicta quibusdam ipsa laboriosam ex necessitatibus obcaecati iusto assumenda temporibus repellendus ab!</p>
			<h1>Facere nisi dicta.</h1>
			<p>Quidem exercitationem error maiores nihil optio consequuntur cupiditate inventore commodi temporibus magni enim voluptas assumenda quaerat quibusdam architecto. Cumque eius dolor inventore at commodi maiores ab omnis aliquid odit libero?</p>
			<h1>Dicta delectus magni.</h1>
			<p>Ipsum laborum aliquam et. Et sunt iusto officia provident non accusantium dolores modi dicta voluptatibus rem quam recusandae nemo esse accusamus odit blanditiis asperiores excepturi sed cumque distinctio soluta voluptatum.</p>
			<h1>Vitae sint ullam.</h1>
			<p>Obcaecati cupiditate similique nulla dolorem amet aliquid doloremque tempora quo minima quam nisi velit nostrum quae repellendus animi natus quia sequi vero. Cupiditate voluptates temporibus cum voluptatum laudantium harum quo!</p>
			<h1>Earum nemo aut!</h1>
			<p>Architecto repudiandae rerum laborum modi quisquam vitae beatae asperiores recusandae tempora officiis obcaecati eveniet maxime veritatis totam optio nam quas aperiam voluptate tenetur facere mollitia dicta soluta aspernatur nisi possimus.</p>
		</div>
		<div class="col">
			<h1>광고</h1>
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>















