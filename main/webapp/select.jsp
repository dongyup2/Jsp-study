<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<style>
    table {
        border: collapse	;
        width: 50%;
        margin: 10px auto;
    }

    table, th, td {
        border: 1px solid black;
        background-color: #f0f8ff;
    }

    th {
        background-color: #f2f2f;
        padding: 4px;
    }

    th, td {
        text-align: center;
        line-height: 2em;
    }
</style>
</head>
<body>
<%
    Class.forName("org.mariadb.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
        "jdbc:mariadb://localhost:3306/green01",
        "root",
        "1234"
        );
    String sql = "select * from member";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    ResultSet rs = pstmt.executeQuery();
    /* pstmt.setString(1, "최홍");
    pstmt.setString(2, "k123");
    pstmt.setString(3, "111");
    pstmt.setString(4, "010-3333-3333");
    int result = pstmt.executeUpdate(); */
%>

<table>
    <thead>
      <tr>
          <th>번호</th>
          <th>이름</th>
          <th>아이디</th>
          <th>비밀번호</th>
          <th>휴대폰</th>
      </tr>
    </thead>
 <tbody>  
<%  
     while(rs.next()) { %>
        <tr>
            <td><%= rs.getInt("mno") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("id") %></td>            
            <td><%= rs.getString("pw") %></td>
            <td><%= rs.getString("phone") %></td>
        </tr>
 <% 
 }
 %> 

    
    </tbody>
</table>

<%
    rs.close();
    pstmt.close();
    conn.close();
%> 
</body>
</html>
