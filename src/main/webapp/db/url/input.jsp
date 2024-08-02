<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<h1>즐겨찾기 추가</h1>
		<form method="get" action="/db/url/insert">
			<label>사이트 명 : </label><input type="text" name="name" class="form-control col-6"><br>
			<label>사이트 주소 : </label><input type="text" name="url" class="form-control col-6"><br>
			<button type="submit" class="btn btn-info">추가</button>
		</form>	
	</div>

</body>
</html>