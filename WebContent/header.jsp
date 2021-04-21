<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String active = request.getParameter("active");

	String welcomClass = "";
	String productsClass= "";
	//active에 요청파라미터가 없을때 
	if(active == null || active.equals("welcome")){
		welcomClass = "class=\"active\"";
				
	}else if (active.equals("products")){
		productsClass = "class = \"active\"";
	}
%>
	<!-- 상단메뉴를 출력하는 코드 -->

	<nav class="navbar navbar-fixed-top navbar-inverse">
		<div class="container">
			<div class="collapse navbar-collapse"id="navbar">
				<ul class="nav navbar-nav">
					<li <%=welcomClass%>><a class ="navbar-brand"href="./Wellcome.jsp?active=welcome">Home</a></li><!-- get방식으로 active파라미터에 welcome전달 -->
					<li <%=productsClass%>><a class = "navbar-brand" href="./products.jsp?active=products">상품 목록</a></li>
					<li><a class = "navbar-brand" href="#">메뉴2</a></li>
					<li><a class = "navbar-brand" href="#">메뉴3</a></li>
				</ul>
			</div>
		</div>
	</nav>
	