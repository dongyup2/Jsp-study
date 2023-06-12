<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
</head>
<body>
<%
	String prevPage = request.getHeader("referer");
	String[] array_url = url.split("/");
	String prePage= array_url[array_url.length - 1];
%>
	다음과 같은 에러가 발생했습니다.
	<%= exception.getMessage() %>
	<hr>
	<a href="prevPage">오류나기 전 페이지로 가기</a>
</body>
</html>