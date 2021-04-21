<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	String greeting = "웹 쇼핑몰에 오신것을 환영합니다";
	String tagline = "Welcome to Web Market!";
	
%>
<%
	LocalDateTime nowDateTime = LocalDateTime.now();
	String am_pm;
	int hour = nowDateTime.getHour();
	int minute = nowDateTime.getMinute();
	int second = nowDateTime.getSecond();
	
	
	
	String s_hour = (hour<10 ? "0":"")+hour;
	String s_minute = (minute <10 ? "0" : "")+minute;
	String s_secound = (second <10 ? "0":"")+second;
	
	if(hour /12 ==0){
		am_pm = "AM";
	}else{
		am_pm="PM";
		hour =hour -12;
	}
	
	String CT = s_hour + ":" + s_minute + ":"+ s_secound+" " + am_pm;
	//시간 출력하는코드
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
	<%@ include file = "header.jsp" %>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=greeting %></h1>
		</div>
	</div>
	<main role ="main">
		<div class ="container">
			<div class="text-conter">
			<h3><%=tagline %></h3>
			<%="<p>현재 접속 시각 " + CT +"</p>" %><!-- 현제시간알려주는 코드 -->
			</div>
		</div>
	</main>
	<!-- 인삿말 변수에 담에서 출력하는 코드 -->
		<%@ include file = "footer.jsp" %>
</body>
</html>