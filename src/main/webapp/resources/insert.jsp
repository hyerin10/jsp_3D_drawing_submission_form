<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Insert</title>
</head>
<body>
	<form method="post" action="insert_process.jsp">
		<h2>입력</h2>
		<ul>
			<li><h1>3D 프린팅 제품 도면 견적서</h1></li>
			<li><h3>도면 정보</h3></li>
			<li>도면 파일 업로드: <input type="file" name="upload_file"></li>
			<li>도면 상세 정보: <input type="text" name="drawing_detail_information"></li>
			<li><h3>프로젝트 정보</h3></li>
			<li>프로젝트명: <input type="text" name="project_name"></li>
			<li>제품 용도: <input type="text" name="product_use"></li>
			<li>납기일(2022-01-01 형식으로 입력): <input type="text" name="target_date_1"> ~ <input type="text" name="target_date_2"></li>
			<li>연락처(010-xxxx-xxx 형식으로 입력): <input type="text" name="phone_number"></li>
			<li>추정 예산 범위: <input type="text" name="estimated_budget_range_1"> ~ <input type="text" name="estimated_budget_range_2"></li>
			<li>이름: <input type="text" name="name"></li>
			<li>비밀번호: <input type="password" name="password"></li>

			<li><input type="submit" value="제출"></li>
			<li><a href="./insert.jsp">입력</a></li>
			<li><a href="./update.jsp">수정</a></li>
			<li><a href="./delete.jsp">삭제</a></li>
		</ul>
	</form>
	
</body>
</html>