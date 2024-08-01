package com.jeonpeace.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jeonpeace.servlet.common.MysqlService;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
			response.setContentType("text/plain");
			PrintWriter out = response.getWriter();
			
			MysqlService mysqlService = MysqlService.getInstance();
			mysqlService.connect();
			
			List<Map<String, Object>> resultList = mysqlService.select("SELECT `address`, `area`, `type` FROM `real_estate` ORDER BY `id` DESC LIMIT 10;");
			
			for(Map<String, Object> resultMap:resultList) {
				
				String address = (String)resultMap.get("address");
				int area = (Integer)resultMap.get("area");
				String type = (String)resultMap.get("type");
				
				out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
				
			}
			
			String query = "INSERT INTO `real_estate`\r\n"
					+ "(`realtorid`, `address`, `area`, `type`, `price`, `rentPrice`)\r\n"
					+ "VALUE\r\n"
					+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL);";
			
			int count = mysqlService.update(query);
			
	}
	
}
