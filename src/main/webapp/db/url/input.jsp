<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
</head>
<body>

	
	<h1>즐겨찾기 추가</h1>

	<form method="get" action="/db/url/insert">
		<label>사이트 명 : </label><input type="text" name="name"><br>
		<label>사이트 주소 : </label><input type="text" name="url"><br>
		<button type="submit">추가</button>
	</form>

</body>
</html>