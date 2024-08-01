package com.jeonpeace.servlet.database.test.url;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jeonpeace.servlet.common.MysqlService;

@WebServlet("/db/url/insert")
public class UrlInsertController extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
			
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
			
		String name = request.getParameter("name");
		String url = request.getParameter("url");
			
		MysqlService mysqlService = MysqlService.getInstance();
			
		mysqlService.connect();
			
		String query = "INSERT INTO `url_list`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + url + "')";
				
		int count = mysqlService.update(query);			
		
		response.sendRedirect("/db/url/list.jsp");
			
	}
		
}
	
