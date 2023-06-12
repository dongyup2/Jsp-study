<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 강제로 에러를 발생시킵니다. 0으로 나눌 수 없는데 0으로 나누는코드를 썼습니다. --%>
<%= 2/0 %>

</body>
</html>