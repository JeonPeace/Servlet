<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 검색</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<h2>메뉴 검색</h2>
		<form method="post" action="/jsp/test/test07.jsp">
			<div class="d-flex">
				<div>
					<input type="text" class="form-control" name="menu">
				</div>
				<div class="text-center">
					<input type="checkbox" class="m-2" name="option"> 4점 이하 제외		
				</div>
			</div>
			<br>
			<button type="submit" class="btn btn-success text-white">검색</button>
		</form>
	</div>

</body>
</html>