<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String sql = "UPDATE member_tbl_02 SET username = ? WHERE username = ?";
	Connection con = DBcon.getConnection();  
	PreparedStatement stmt = con.prepareStatement(sql);
	stmt.setString(1, );
	stmt.setString(2, );
	stmt.setString(3, );
	stmt.setString(4, );
	stmt.setString(5, );
	stmt.setString(6, );
	stmt.setString(7, );
	stmt.executeUpdate();	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원관리 ver1.0</title>
<style>
body, html {
	height: 100%;
	margin: 0;
}

header, nav, section, footer {
	display: block;
}

.center-text {
	text-align: center;
}

nav {
	background-color: #6fadcf;
	height: 30px;
}

nav ul {
	display: flex;
	list-style-type: none;
	padding: 0;
	margin: 0;
}

nav ul li {
	margin-right: 20px;
	padding: 5px;
}

nav ul li a {
	color: white;
	text-decoration: none;
}

header {
	background-color: blue;
	color: white;
}

main {
	min-height: calc(100% - 170px);
	background-color: #b9a0fe;
}

footer {
	height: 40px;
	background-color: blue;
	padding: 10px;
	color: white;
}


 table {
        border: collapse;
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
input[type="submit"] {
	color: black;
	border: none;
	cursor: pointer;
	width: 50%;
	opacity: 0.9;
}
</style>
</head>
<body>

	<header>
		<h2 class="center-text">쇼핑몰 회원관리 ver1.0</h2>
		<hr>
	</header>
	<nav>
		<ul>
			<li><a href="testregister.jsp">회원등록</a></li>
			<li><a href="testmemberlistselect.jsp">회원목록조회/수정</a></li>
			<li><a href="testsalesList.jsp">회원매출조회</a></li>
			<li><a href="index.jsp">홈으로</a></li> </>
	</nav>
	<main>
		<section>
			<div class="table-container">
				<h3 class="center-text">회원목록조회/수정</h3>
				<!-- 
					회원상세페이지는 수정을 전제로 하기 때문에
					테이블 보다는 폼을 사용하는게 좋겠다.
 				-->
				<form>
					<table>
						<thead>
							<tr>
								<th>회원번호</th>
								<th>회원이름</th>
								<th>회원번호</th>
								<th>회원주소</th>
								<th>가입일자</th>
								<th>고객등급</th>
								<th>거주지역</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="test_detail.jsp?custno=<%rs.getInt("custno")%>"><%= rs.getInt("custno") %></td>
								<td><%rs.getString("custname"); %></td>
								<td><%rs.getString("phone"); %></td>
								<td><%rs.getString("address"); %></td>
								<td><%rs.getString("joindate"); %></td>
								<td><%rs.getString("grade"); %></td>
								<td><%rs.getString("city"); %></td>
							</tr>
						</tbody>	
					</table>
				</form>
			</div>
		</section>
	</main>
	<footer>
		<p class="center-text">저작권 관련 정보 &#169; 그린컴퓨터 아카데미</p>
	</footer>
</body>
</html>