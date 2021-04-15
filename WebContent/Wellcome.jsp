<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	String greeting = "Welcome to Web Shopping Mall";
	String tagline = "Welcome to Web Market!";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<!-- 부트스트랩을 위한 jQuery -->
	<!-- javaScript - 정적컨텐츠를 동적으로 만들어주는 프론트엔드 언어 
		Jquery - 자바스크립트를 편하게 사용할 수 있도록 해주는 프레임워크
	 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-fixed-top navbar-invberse bg-dark">
		<div class="container">
			<div class="collapse navbar-collapse"id="navbar">
				<ul class="nav navbar-nav">
					<li class="active"><a class ="navbar-brand"href="./wellcome.jsp">Home</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=greeting %></h1>
		</div>
	</div>
	<main role ="main">
		<div class ="container">
			<div class="text-conter">
			<h3><%=tagline %></h3>
			</div>
		</div>
	</main>
	<footer class="contatiner">
		<p>&copy; WebMarket</p>
		
	</footer>
		
</body>
</html>