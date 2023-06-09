<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<% 
	String uid = "kkk";
	String upw = "k1234";
	
	String param_id= request.getParameter("userid"); 
	String param_pw= request.getParameter("pw"); 
	request.setAttribute("greeting", "반가워요~");
	
	String msg= "";
	
	if(uid.equals(param_id) && upw.equals(param_pw)){
	RequestDispatcher rd = request.getRequestDispatcher("sucess.jsp");
	rd.forward(request, response);
	/* 요청이 끝나지 않은 상태로 브라우저 이동 success.jsp라는 파일에 요청을 떠넘김... */
		
	}else{
		response.sendRedirect("fail.jsp");
	}
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= msg  %>

</body>
</html>