<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 확인 페이지</title>
</head>
<body>
    <%
        String id = (String)session.getAttribute("id");
        String pwd = (String)application.getAttribute("pwd");
        String name = (String)application.getAttribute("name");
        String email = (String)application.getAttribute("email");
    %>
    <h1>회원 정보</h1>
    <ul>
        <li>아이디: <%=id %></li>
        <li>비밀번호:<%=pwd %></li>
        <li>이름: <%=name %></li>
        <li>이메일: <%=email %></li>
    </ul>
</body>
</html>
