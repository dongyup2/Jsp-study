<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String userid = request.getParameter("userid");
%>
<h1>로그인 성공했습니다..!</h1>
<h3><%= userid %>님. <%= (String)request.getAttribute("greeting") %></h3>
</body>
</html>