<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.time.LocalDate"%>
<html>
<head>
<title>Insert process</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		request.setCharacterEncoding("utf-8");
	
		String project_name = request.getParameter("project_name");
		String product_use = request.getParameter("product_use");
		String target_date_1 = request.getParameter("target_date_1");
		String target_date_2 = request.getParameter("target_date_2");
		String estimated_budget_range_1 = request.getParameter("estimated_budget_range_1");
		String estimated_budget_range_2 = request.getParameter("estimated_budget_range_2");
		String drawing_detail_information = request.getParameter("drawing_detail_information");
		String phone_number = request.getParameter("phone_number");
		String name = request.getParameter("name");
		String pwd = request.getParameter("password");
		String upload_file = request.getParameter("upload_file");
		
		//오늘 날짜 가져오기
		LocalDate now = LocalDate.now();
		
		Statement stmt = null;
		
		try {
			String sql = "insert into menu(project_name, product_use, target_date_1, target_date_2, estimated_budget_range_1, estimated_budget_range_2, drawing_detail_information, phone_number, name, password, upload_file) values('"+project_name+"', '"+product_use+"', '"+target_date_1+"', '"+target_date_2+"', '"+estimated_budget_range_1+"', '"+estimated_budget_range_2+"', '"+drawing_detail_information+"', '"+phone_number+"', '"+name+"', '"+pwd+"', '"+upload_file+"');";
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			out.println("테이블 삽입이 성공했습니다.");
		} catch (SQLException ex) {
			out.println("테이블 삽입이 실패했습니다.<br>");
			out.println("SQLException: "+ex.getMessage());
		} finally {
			if(stmt != null)
				stmt.close();
			if(conn!=null)
				conn.close();
		}
	%>
</body>
</html>