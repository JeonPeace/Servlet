<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>

	<%
		String lengthString = request.getParameter("length");
		double lengthDouble = Double.parseDouble(lengthString);
		
		String[] typeArray = request.getParameterValues("lengthType");
		
		String result = "";
		
		for(int i = 0; i < typeArray.length; i ++){
			if(typeArray[i].equals("inch")){
				double inch = lengthDouble * 0.39;
				result += inch + "inch<br>";
			}else if(typeArray[i].equals("yard")){
				double yard = lengthDouble * 0.01093;
				result += yard + "yard<br>";
			}else if(typeArray[i].equals("feet")){
				double feet = lengthDouble * 0.0328;
				result += feet + "feet<br>";
			}else if(typeArray[i].equals("meter")){
				double meter = lengthDouble * 0.01;
				result += meter + "meter<br>";
			}
		}
		
	%>
	


	<h1>변환 결과</h1>
	<div>
		<%= lengthString %>cm
		<hr>
	</div>
	<div class="display-4">
		<%= result %>
	</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>