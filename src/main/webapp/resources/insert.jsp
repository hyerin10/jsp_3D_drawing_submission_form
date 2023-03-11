<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Insert</title>
<link rel="stylesheet" type="text/css" href="css/insert.css">
</head>
<body>
	<form method="post" action="insert_process.jsp">
		<h2>입력</h2>
		<h1>3D 프린팅 제품 도면 견적서</h1>
		<div class="container">
			<div class="drawing_container">
				<ul class="drawing_col1">
					<h3>도면 정보</h3>
					<li>도면 파일 업로드:</li>
					<li>도면 상세 정보:</li>
				</ul>
				<ul class="drawing_col2">
					<input type="file" name="upload_file">
					<input type="text" name="drawing_detail_information">
				</ul>
			</div>
			<div class="project_container">
				<ul class="project_col1">
					<li><h3>프로젝트 정보</h3></li>
					<li>프로젝트명:</li>
					<li>제품 용도:</li>
					<li>납기일(2022-01-01 형식으로 입력):</li>
					<li>연락처(010-xxxx-xxx 형식으로 입력):</li>
					<li>추정 예산 범위1:</li>
					<li>추정 예산 범위2:</li>
					<li>이름:</li>
					<li>비밀번호:</li>
				</ul>
				
				<ul class="project_col2">
					<input type="text" name="project_name">
					<input type="text" name="product_use">
					<input type="text" name="target_date_1">
					<input type="text" name="target_date_2">
					<input type="text" name="phone_number">
					<input type="text" name="estimated_budget_range_1">
					<input type="text" name="estimated_budget_range_2">
					<input type="text" name="name">
					<input type="password" name="password">
					<input type="submit" value="제출">
				</ul>
			</div>
		</div>
		<ul class="buttons">
			<li><a href="./insert.jsp">입력</a></li>
			<li><a href="./update.jsp">수정</a></li>
			<li><a href="./delete.jsp">삭제</a></li>
		</ul>
	</form>
	
</body>
</html>