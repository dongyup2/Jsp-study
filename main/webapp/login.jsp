<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리 페이지</title>
</head>
<body>
    <%
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");

        String storedId = (String)application.getAttribute("id");
        String storedPwd = (String)application.getAttribute("pwd");

        if (id.equals(storedId) && pwd.equals(storedPwd)) {
           session.setAttribute("id", id);
           response.sendRedirect("profile.jsp");
        } else {
           out.print("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.');</script>");
           response.sendRedirect("loginpage.jsp");  
        }
    %>
</body>
</html>
