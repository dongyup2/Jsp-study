<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 폼</h1>
	<hr>
	<form action="regist.jsp" method="post">
		<input type="text" name="userid" value="" placeholder="아이디 입력"><br>
		<input type="text" name="password" value="" placeholder="패스워드 입력"><br>
		<input type="text" name="username" value="" placeholder="이름 입력"><br>
		<input type="submit" value="등록">
	</form>
</body>
</html>