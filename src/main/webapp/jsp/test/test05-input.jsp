<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>

	<div class="container">
		<div>
			<h1>길이 변환</h1>
		</div>
		<form method="post" action="/jsp/test/test05.jsp">
			<div class="d-flex">
				<div>
					<input type="text" name="length" class="form-control">
				</div>
				<div>
					cm
				</div>		
			</div>
			<div>
				<label>인치<input type="checkbox" name="lengthType" value="inch"></label>
				<label>야드<input type="checkbox" name="lengthType" value="yard"></label>
				<label>피트<input type="checkbox" name="lengthType" value="feet"></label>
				<label>미터<input type="checkbox" name="lengthType" value="meter"></label>
			</div>
			<div>
				<button type="submit" class="btn btn-success text-white">변환</button>
			</div>
		</form>

	</div>



<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>