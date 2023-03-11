<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Select</title>
<link rel="stylesheet" type="text/css" href="css/drawings_view.css">
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		String now_num = request.getParameter("num");
	
		ResultSet rs = null;
		Statement stmt = null;
		
		try {
			String sql = "select * from menu";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int num = rs.getInt("num");
				String project_name = rs.getString("project_name");
				String product_use = rs.getString("product_use");
				String target_date_1 = rs.getString("target_date_1");
				String target_date_2 = rs.getString("target_date_2");
				String estimated_budget_range_1 = rs.getString("estimated_budget_range_1");
				String estimated_budget_range_2 = rs.getString("estimated_budget_range_2");
				String drawing_detail_information = rs.getString("drawing_detail_information");
				String phone_number = rs.getString("phone_number");
				String name = rs.getString("name");
				String upload_file = rs.getString("upload_file");
	%>
	<div class="container">
    
    <ul class="list_content">
      <li class="title">
        <h2>견적서 페이지</h2>
      </li>
      <li class="row">
        <span class="item">번호</span>
        <span class="item">프로젝트명</span>
        <span class="item">글쓴이</span>
        <span class="item">첨부</span>
        <span class="item">납기일</span>
      </li>
    <hr>
      <li class="row">
        <span class="item"><%=num%></span>
        <span class="item"><%=project_name%></span>
        <span class="item"><%=name%></span>
        <span class="item"><%=upload_file%></span>
        <span class="item"><%=target_date_2%></span>
      </li>
      <hr>
      <div class="container">
        <li class="content_list">
          <span class="content_item">프로젝트명: </span>
          <span class="content_item"><%=project_name%></span>
          <span class="content_item">제품 용도: </span>
          <span class="content_item"><%=product_use%></span>
          <span class="content_item">시작일: </span>
          <span class="content_item"><%=target_date_2%></span>
          <span class="content_item">납기일: </span>
          <span class="content_item"><%=target_date_2%></span>
          <span class="content_item">도면 파일: </span>
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