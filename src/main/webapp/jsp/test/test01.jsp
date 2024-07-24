<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 무법</title>
</head>
<body>

	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0; i < scores.length; i ++){
			sum += scores[i];
		}
		
		double average = sum / (double)scores.length;
	%>

	<h2>시험 점수 평균은 <%= average %>점 입니다.</h2>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		
		for(String answer:scoreList){
			if(answer.equals("O")){
				score += 10;
			}
		}
	%>
	
	<h2>채점 결과는 <%= score %>점 입니다.</h2>
	
	<%!
		public int calculateSum(int number){
			int sum = 0;
			for(int i = 1; i <= number; i ++){
				sum += i;
			}
			return sum;
		}
	%>
	
	<h2>1부터 50까지 합은 <%= calculateSum(50) %>입니다.</h2>
	
	<%
		String birthDay = "20010522";
		int year = Integer.parseInt(birthDay.substring(0, 4));
		int age = 2024 - year + 1;
	%>

	<h2><%= birthDay  %>의 나이는 <%= age %>살 입니다.</h2>	
</body>
</html>