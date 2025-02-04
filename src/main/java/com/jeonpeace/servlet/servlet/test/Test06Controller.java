package com.jeonpeace.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String numberString1 = request.getParameter("number1");
		String numberString2 = request.getParameter("number2");
		
		int number1 = Integer.parseInt(numberString1);
		int number2 = Integer.parseInt(numberString2);
		
		int add = number1 + number2;
		int sub = number1 - number2;
		int multi = number1 * number2;
		int div = number1 / number2;
		
		out.println("{\"addition\": " + add + "," 
		+ "\"subtraction\": " + sub + "," 
		+ "\"multiplication\": " + multi + ","
		+ "\"division\": " + div + "}");
		
	}
	
}
