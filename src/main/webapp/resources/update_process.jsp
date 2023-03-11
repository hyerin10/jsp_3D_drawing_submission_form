<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Update process</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
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
		
		ResultSet rs = null;
		Statement stmt = null;
		
		try {
			String sql = "select * from menu where name='"+name+"' and password='"+pwd+"'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				String rName = rs.getString("name");
				String rPwd = rs.getString("password");

				
				if(name.equals(rName) && pwd.equals(rPwd)) {
					sql = "update menu set project_name = '"+project_name+"', product_use = '"+product_use+"', target_date_1 = '"+target_date_1+"', target_date_2 = '"+target_date_2+"', estimated_budget_range_1 = '"+estimated_budget_range_1+"', estimated_budget_range_2 = '"+estimated_budget_range_2+"', drawing_detail_information = '"+drawing_detail_information+"', phone_number = '"+phone_number+"', upload_file = '"+upload_file+"' where name='"+name+"' and password='"+pwd+"'";
					stmt = conn.createStatement();
					stmt.executeUpdate(sql);
					out.println("테이블을 수정했습니다.");
				} else 
					out.println("일치하는 이름이 아닙니다.");
				} else 
					out.println("테이블에 일치하는 번호가 없습니다.");
			} catch (SQLException ex) {
				out.println("SQLException: "+ex.getMessage());
		} finally {
			if(rs!=null)
				rs.close();
			if(stmt!=null)
				stmt.close();
			if(conn!=null)
				conn.close();
		}
	%>
</body>
</html>