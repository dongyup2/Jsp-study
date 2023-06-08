<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String num ="1번";
	String name = "이동엽";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
</style>
</head>
<body>
<%
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	
%>
<h1>second JSP</h1>
	번호 : <%= num %>
	이름 : <%= name %>
</body>
</html>