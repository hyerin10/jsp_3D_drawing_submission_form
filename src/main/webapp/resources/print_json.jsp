<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.json.simple.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

<%
	ResultSet rs = null;
	Statement stmt = null;
	
	JSONObject jsonObject = new JSONObject();
	JSONObject jsonArr = new JSONObject();
	
	try {
		String sql = "select * from menu";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int num = rs.getInt("num");
			String projectName = rs.getString("project_name");
			String projectUse = rs.getString("product_use");
			String targetDate1 = rs.getString("target_date_1");
			String targetDate2 = rs.getString("target_date_2");
			String estimatedBudgetRange1 = rs.getString("estimated_budget_range_1");
			String estimatedBudgetRange2 = rs.getString("estimated_budget_range_2");
			String drawingDetailInformation = rs.getString("drawing_detail_information");
			String phoneNumber = rs.getString("phone_number");
			String name = rs.getString("name");
			String pwd = rs.getString("password");
			String uploadFile = rs.getString("upload_file");

			jsonObject.put("num", num);
			jsonObject.put("project_name", projectName);
			jsonObject.put("project_use", projectUse);
			jsonObject.put("target_date_1", targetDate1);
			jsonObject.put("target_date_2", targetDate2);
			jsonObject.put("estimated_budget_range_1", estimatedBudgetRange1);
			jsonObject.put("estimated_budget_range_2", estimatedBudgetRange1);
			jsonObject.put("drawing_detail_information", drawingDetailInformation);
			jsonObject.put("phone_number", phoneNumber);
			jsonObject.put("name", name);
			jsonObject.put("password", pwd);
			jsonObject.put("upload_file", uploadFile);
			
			jsonArr.put(num, jsonObject);
		}
	} catch (SQLException ex) {
		out.println("테이블 호출이 실패했습니다.<br>");
		out.println("SQLException: "+ex.getMessage());
	} finally {
		if(rs!=null)
			rs.close();
		if(stmt!=null)
			stmt.close();
		if(conn!=null)
			conn.close();
	}
	out.println(jsonArr.toJSONString());
%>
	