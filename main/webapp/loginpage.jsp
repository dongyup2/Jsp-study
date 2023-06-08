<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
    <h1>로그인 페이지</h1>
    <form action="login.jsp" method="get">
        <label for="id">아이디:</label>
        <input type="text" id="id" name="id"><br>
        <label for="pwd">비밀번호:</label>
        <input type="password" id="pwd" name="pwd"><br>
        <input type="submit" value="로그인">
        <input type="reset" value="취소">
    </form>
</body>
</html>
