<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 수치</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>

	<%!
		public double calculateBmi(int height, int weight){
			double bmi = weight / ((height / 100.0) * (height / 100.0));
			return bmi;
		}
	
		public String conclusion(double bmi){
			
			if(bmi < 18.5){
				return "저체중";
			}else if(bmi < 25){
				return "정상";
			}else if(bmi < 30){
				return "과체중";
			}else{
				return "비만";
			}
		}
	%>

	<%
		String heightString = request.getParameter("height");
		String weightString = request.getParameter("weight");
		
		int heightInt = Integer.parseInt(heightString);
		int weightInt = Integer.parseInt(weightString);
	%>
	
	<div>
		<h1>BMI 측정 결과</h1>
	</div>
	<div class="display-4">
			당신은 <span class="text-info"><%= conclusion(calculateBmi(heightInt, weightInt)) %></span> 입니다.
		</div>
	<div class="mt-2">
		<h6>BMI 수치: <%=  calculateBmi(heightInt, weightInt)%></h6>
	</div>

	


	
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>