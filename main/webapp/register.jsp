<%@page import="java.util.ArrayList"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입중</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	String info = request.getParameter("info");
	
	MemberVO m = new MemberVO(id, pwd, name, email, tel, info);
	ArrayList<MemberVO> list = new ArrayList<>();
	list.add(m);
	
	//application.setAttribute("id", id);
	//application.setAttribute("pwd", pwd);
	//application.setAttribute("name", name);
	//application.setAttribute("email", email);
	
	response.sendRedirect("loginpage.jsp");  
%>
<h1>Page 2</h1>
<hr>
<h2>당신이 입력한 정보</h2>
아이디 : <%= id %><br>
패스워드 : <%= pwd %>
<a href="loginForm.jsp">로그인하러 가기</a>
</body>
</html>