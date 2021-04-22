<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
	<title>상품 목록</title>
	<!--  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!--  -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<!--  -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<!--  -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	<div class ="container">
			<!-- 상품 등록 form을 보여줘야하는 영역 -->
			<form action ="processAddProduct.jsp" class="form-horizontal" method="post">
				<div class="form-group row">
					<label class="col-sm-2">상품 코드</label>
					<div class= "col-sm-3">
						<input type="text" name="productId" class="form-control" maxlength="5" size="5"><!-- 상품정보를 등록하는 코드 .부트스트렙에 그리드 시스탬을 사용한다 -->
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2">상품명</label>
					<div class="col1-sm-3"></div>
						<input type="text" name="name" class="form-control" maxlength="255" size="255">
				</div>
				
		 		<div class="form-group row">
					<label class="col-sm-2">가격</label>
					<div class="col1-sm-3"></div>
					<input type="number" name="unitPrice" class="form-control" min="0" max="10000000">
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2">상세정보</label>
					<div class="col1-sm-5"></div>
						<textarea name ="description"rows="10" cols="50" class="form-control"></textarea>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2">제조사</label>
					<div class="col1-sm-3"></div>
					<input type="text" name="manufacturer" class="form-control">
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2">분류(카테고리)</label>
					<div class="col1-sm-3"></div>
					<input type="text" name="category" class="form-control" >
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2">재고 수</label>
					<div class="col1-sm-3"></div>
						<input type="range" name="unitsInStock" class="form-control">
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2">상태</label>
					<div class="col1-sm-5"></div>
					<label><input type="radio" name="condition" value="new">세제품</label>
					<label><input type="radio" name="condition" value="old">중고제품</label>
					<label><input type="radio" name="condition" value="refurbished">리퍼제품</label>
				</div>
				
				<div class="form-group row">
					<div class="col1-sm-offset-2 col-sm-10">
						<input type="submit" class="btn- btn-primary" value="등록">
						<input type="reset" class="btn- btn-danger" value="초기화">
					</div>
				</div>
			
			</form>
		</div>
	<hr>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>