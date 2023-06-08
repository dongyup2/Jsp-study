<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>시작</h1>
<%
	pageContext.setAttribute("name","철수");
	request.setAttribute("name", "만수");

	request.getRequestDispatcher("innerObject_result.jsp").forward(request, response);
%>


<%=pageContext.getAttribute("name") %><br>
<%=session.getAttribute("name") %><br>
<a href="innerObject_result.jsp">결과화면보기</a>
</body>
</html>