package com.jeonpeace.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String priceString = request.getParameter("price");
		int price = Integer.parseInt(priceString);
		
		out.println("<html><head><title>주문하기</title></head>");
		out.println("<body>");
		
		if(!address.contains("서울시")) {
			out.println("<h1>배달 불가 지역입니다.</h1>");
			out.println("</body></html>");
			return;
		}else if(card.equals("신한카드")) {
			out.println("<h1>결제 불가 카드입니다.</h1>");
			out.println("</body></html>");
			return;
		}
		
		out.println("<h4><b>" + address + "로 배달 준비중</b></h4>");
		out.println("<hr>");
		
		out.println("결제 금액 : " + price);
		
		out.println("</body></html>");
		
	}

}
