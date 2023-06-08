<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
		
    %>
    <%-- 주석 --%>
    <!-- 주석 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>First JSP</h1>
	<form action="secoundJsp.jsp"method="get">
		<input type="text" name="num" placeholder="번호를 입력하세요">
		<input type="text" name="name" placeholder="이름을 입력하세요">
		<button type="submit">전송</button>
	</form>
</body>
</html>