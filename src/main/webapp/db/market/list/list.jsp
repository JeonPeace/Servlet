<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jeonpeace.servlet.common.MysqlService" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>
	
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		List<Map<String, Object>> resultList = mysqlService.select("SELECT used_goods.id, seller.nickname, used_goods.title, used_goods.image, used_goods.price FROM `seller` JOIN `used_goods` ON seller.id = used_goods.sellerId ORDER BY `id` DESC;");
		
		
	%>
	
	<div id="wrap" class="bg-dark">
		<header class="bg-danger text-white display-4 font-weight-bold d-flex justify-content-center align-items-center">HONG당무 마켓</header>
		<nav class="main-menu bg-success d-flex align-items-center">
			<ul class="nav nav-fill w-100">
				<li class="nav-item">
					<a class="nav-link text-white" href="#">리스트</a>
				</li>
				<li class="nav-item">
					<a class="nav-link text-white" href="#">물건 올리기</a>
				</li>
				<li class="nav-item">
					<a class="nav-link text-white" href="#">마이 페이지</a>
				</li>								
			</ul>
		</nav>
		<article class="main-content bg-warning d-flex flex-wrap p-3 justify-content-between">
			<% for(Map<String, Object> resultMap:resultList) { 
				String image = "";
				if(resultMap.get("image") != null){ 
					image = (String)resultMap.get("image");
				}else{
					image = "https://e1.pxfuel.com/desktop-wallpaper/700/352/desktop-wallpaper-white-backgrounds-%C2%B7%E2%91%A0-full-backgrounds-for-white-background.jpg";
				}
			%>
			<div class="goodsSection border border-success">
				<div>
					<img class="goodsImage" src="<%= image %>">				
				</div>
				<div class="title">
					<%= resultMap.get("title") %>
				</div>
				<div class="price">
					<%= resultMap.get("price") %>
				</div>
				<div class="sellerId">
					<%= resultMap.get("nickname") %>
				</div>
			</div>
			<% } %>
		</article>
		<footer class="d-flex justify-content-center align-items-center text-light">
			Copyright 2019. HONG All Rights Reserved
		</footer>
	</div>

	
</body>
</html>