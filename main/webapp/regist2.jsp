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
		request.setCharacterEncoding("utf-8");
	/* 포스트 방식이여도 한글 안꺠짐 */
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
	%>
	<h1>등록한 회원정보</h1>
	<hr>
	<ol>
		<li>아이디 : <%=userid%></li>
		<li>비밀번호 : <%=password%></li>
		<li>이름 : <%=username%></li>
	</ol>
	<hr>
	<a href="loginForm.jsp">로그인하러 가기</a>

</body>
</html>