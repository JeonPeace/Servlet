<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jeonpeace.servlet.common.MysqlService" %>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 리스트</title>
</head>
<body>

	<%
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		List<Map<String, Object>> resultList = mysqlService.select("SELECT * FROM `url_list` ORDER BY `id` DESC");
		
	%>
	
	<table border="1">
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
				<td><a href="/db/url/delete?deleteId=<%= resultMap.get("id") %>">삭제하기</a></td>
			</tr>
		<% } %>
		</tbody>
	</table>

</body>
</html>