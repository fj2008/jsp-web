<%@page import="DTO.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="DAO.ProductRepository" scope="session"></jsp:useBean><!-- scope는 이 빈즈의 수명을뜻함 -->
<%
	List<Product> listOfProducts =productDAO.getAllProducts();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	 </div>
	
	<div class="container">
		<div class="row" align="center"> 
		<!-- 이제 상품을 하나씩 보여줄것임 -->
		<%
			for(int i =0; i<listOfProducts.size(); i++){
				Product product = listOfProducts.get(i);
			
		%>
			<div class="col-md-4">
					<h3><%=product.getName() %></h3>
					<p><%=product.getDescription() %></p>
					<p><%=product.getUnitPrice() %></p>
				</div>
		<%
		}	//반복문을 활용해서 각 인덱스의 순서대로 getter를 이용해서 자료를 요청했다
		%>
				
		</div>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>