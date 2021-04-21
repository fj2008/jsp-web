<%@page import="DTO.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="DAO.ProductRepository" scope="session"></jsp:useBean><!-- scope는 이 빈즈의 수명을뜻함/dao클래스를 데이터베이스대신해서 씀 -->
<%
	List<Product> listOfProducts =productDAO.getAllProducts();
%>
<!-- 상품목록을 보여주는 코드 -->
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
	<!-- 상품목록 제목 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	 </div>
	<!-- 상품목록이 보여주는 코드 -->
	<div class="container">
		<div class="row" align="center"> 
		<!-- 이제 상품을 하나씩 보여줄것임 -->
		<%
			for(int i =0; i<listOfProducts.size(); i++){
				Product product = listOfProducts.get(i);
			//상품정보를 가져오고있음
		%>
			<div class="col-md-4">
					<h3><%=product.getName() %></h3>
					<p><%=product.getDescription() %></p>
					<p><%=product.getUnitPrice() %></p>
					<p><a href="./product.jsp?productId=<%=product.getProductId() %>" class="btn btn-secondary" role="button">상세 정보&raquo;</a></p><!-- 상세정보 버튼을 만드는코드 -->
				</div>
				<!-- 상품정보를 출력하고 있음 그리고 상세정보를 출력하면 요청파라미터를 가지고 product,jsp로 이동 -->
		<%
		}	//반복문을 활용해서 각 인덱스의 순서대로 getter를 이용해서 자료를 요청했다
		%>
				
		</div>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>