<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<html>
<head>
<title>DB connection</title>
</head>
<body>
	<%
	Connection conn = null;

	String url="jdbc:mysql://localhost/sys?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
	String id = "root";
	String password = "";
		
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("driver loading success!");
		conn=DriverManager.getConnection(url, id, password);
		System.out.println("database connecting success!");
	} catch(ClassNotFoundException e) {
		System.out.println("cannot find driver!");
	} catch(SQLException e) {
		System.out.println("connection failed!");
	}
	
		
	%>
</body>
</html>