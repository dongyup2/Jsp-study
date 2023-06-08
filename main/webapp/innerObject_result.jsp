<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>종료</h1>
<%
	
	
%>
페이지컨텍스트에 저장된 이름 값 :
<%= pageContext.getAttribute("name") %>
리퀘스트 영역에 저장된 이름 값 :
<%= request.getAttribute("name") %>
</body>
</html>