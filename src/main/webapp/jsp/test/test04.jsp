<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>

	<%
		String number1String = request.getParameter("number1");
		String number2String = request.getParameter("number2");
		
		int number1Int = Integer.parseInt(number1String);
		int number2Int = Integer.parseInt(number2String);
		
		String how = request.getParameter("how");
		
	%>
	
	<%!
	
		public double calculation(String how, int number1, int number2){
			
			double number1Double = number1;
			double number2Double = number2;
		
			if(how.equals("+")){
				return number1Double + number2Double;
			}else if(how.equals("-")){
				return number1Double - number2Double;
			}else if(how.equals("X")){
				return number1Double * number2Double;
			}else{
				return number1Double / number2Double;
			}
		
		}
	
	%>
	
	

	<h1>계산 결과</h1>
	<div class="display-4">
		<%= number1Int %> <%= how %> <%= number2Int %> = <span class="text-info"><%= calculation(how, number1Int, number2Int) %></span>
	</div>
	
	


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>