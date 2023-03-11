<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Update</title>
</head>
<body>
	<form method="post" action="update_process.jsp">
		<h2>수정</h2>
		<ul>
			<li>이름: <input type="text" name="name"></li>
			<li>비밀번호: <input type="password" name="password"></li>
			<li>변경할 프로젝트명: <input type="text" name="project_name"></li>
			<li>변경할 제품용도: <input type="text" name="product_use"></li>
			<li>변경할 시작기간: <input type="text" name="target_date_1"></li>
			<li>변경할 마감기간: <input type="text" name="target_date_2"></li>
			<li>변경할 시작 추정예산범위: <input type="text" name="estimated_budget_range_1"></li>
			<li>변경할 끝 추정예산범위: <input type="text" name="estimated_budget_range_2"></li>
			<li>변경할 상세정보: <input type="text" name="drawing_detail_information"></li>
			<li>변경할 핸드폰번호: <input type="text" name="phone_number"></li>
			<li>변경할 파일: <input type="text" name="upload_file"></li>
			<li><input type="submit" value="전송"></li>
			<li><a href="./insert.jsp">입력</a></li>
			<li><a href="./update.jsp">수정</a></li>
			<li><a href="./delete.jsp">삭제</a></li>
		</ul>
	</form>
	
</body>
</html>