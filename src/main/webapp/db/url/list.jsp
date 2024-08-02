<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jeonpeace.servlet.common.MysqlService" %>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 리스트</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<%
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		List<Map<String, Object>> resultList = mysqlService.select("SELECT * FROM `url_list` ORDER BY `id` DESC");
		
	%>
	
	<table border="1" class="table">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
				<th>사이트 삭제</th>
			</tr>
		</thead>
		<tbody>
		<% for(Map<String, Object> resultMap:resultList) { %>
			<tr>
				<td><%= resultMap.get("name") %></td>
				<td><%= resultMap.get("url") %></td>
				<td><a href="/db/url/delete?deleteId=<%= resultMap.get("id") %>" class="btn btn-danger btn-sm">삭제</a></td>
			</tr>
		<% } %>
		</tbody>
	</table>

</body>
</html>