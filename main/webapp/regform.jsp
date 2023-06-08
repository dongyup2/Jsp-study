<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h1>회원가입</h1>
<hr>
<form action="register.jsp" method="get">
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="email" name="email"></td>
		</tr>
		<tr>
			<th>휴대폰</th>
			<td><input type="phone" name="phone"></td>
		</tr>
			<textarea rows="4" cols="30" name="info"></textarea>	
	</table>
			<button type="submit">전송</button>
			<button type="reset">초기화</button>
</form>
</body>

</html>