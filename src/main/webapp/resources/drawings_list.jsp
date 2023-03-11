<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Select</title>
<link rel="stylesheet" type="text/css" href="css/drawings_list.css">
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<div class="container">
    
    <ul class="list_content">
      <li class="title">
        <h2>견적서 리스트</h2>
      </li>
      <li class="row">
        <span class="item">번호</span>
        <span class="item">프로젝트명</span>
        <span class="item">글쓴이</span>
        <span class="item">첨부</span>
        <span class="item">납기일</span>
      </li>
    <hr>
    
	<%
		ResultSet rs = null;
		Statement stmt = null;
		
		try {
			String sql = "select num, project_name, name, upload_file, target_date_2 from menu";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int num = rs.getInt("num");
				String project_name = rs.getString("project_name");
				String target_date_2 = rs.getString("target_date_2");
				String name = rs.getString("name");
				String upload_file = rs.getString("upload_file");
	%>
	<li class="row">
       <span class="item"><%=num%></span>
       <span class="item"><a><%=project_name%></a></span>
       <span class="item"><%=name%></span>
       <span class="item"><%=upload_file%></span>
       <span class="item"><%=target_date_2%></span>
    </li>
	<%
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
	%>
	</div>
</body>
</html>