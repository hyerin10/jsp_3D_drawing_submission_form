<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Delete</title>
</head>
<body>
	<form method="post" action="delete_process.jsp">
		<h2>삭제</h2>
		<ul>
			<li>삭제할 레코드 정보를 입력하세요.</li>
			<li>이름: <input type="text" name="name"></li>
			<li>비밀번호: <input type="password" name="pwd"></li>
			<li><input type="submit" value="확인"></li>
			<li><a href="./insert.jsp">입력</a></li>
			<li><a href="./update.jsp">수정</a></li>
			<li><a href="./delete.jsp">삭제</a></li>
		</ul>
	</form>
	
</body>
</html>