<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Delete process</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		
		ResultSet rs = null;
		Statement stmt = null;
		
		try {
			String sql = "select name, password from menu where name='"+name+"' and password='"+pwd+"'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {

				String rName = rs.getString("name");
				String rPwd = rs.getString("password");
				
				if(name.equals(rName) && pwd.equals(rPwd)) {
					sql = "delete from menu where name = '"+name+"'and password='"+pwd+"'";
					stmt = conn.createStatement();
					stmt.executeUpdate(sql);
					out.println("테이블을 삭제했습니다.");
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