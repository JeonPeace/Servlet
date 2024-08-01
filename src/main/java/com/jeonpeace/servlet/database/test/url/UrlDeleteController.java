package com.jeonpeace.servlet.database.test.url;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jeonpeace.servlet.common.MysqlService;

@WebServlet("/db/url/delete")
public class UrlDeleteController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		String deleteId = request.getParameter("deleteId");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
			
		String query = "DELETE FROM `url_list` WHERE `id` = " + deleteId + ";";
		
		int count = mysqlService.update(query);
			
		response.sendRedirect("/db/url/list.jsp");
			
	}
	

	
}
