<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//회원 한명의 데이터(db)를 화면에 보여주기
  	//DB에 접속---> 쿼리실행---> 결과 받기(Resultset)%>
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
				<form action="testregister.jsp" method="POST">
					<table>
							<%
							request.setCharacterEncoding("utf-8");
							Class.forName("org.mariadb.jdbc.Driver");
							Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/green02", "root", "1234");
							String sql = "SELECT * FROM member_tbl_02;";

							PreparedStatement pstmt = conn.prepareStatement(sql);
							ResultSet rs = pstmt.executeQuery();
							
							%>
						<thead>
							<tr>
								<th>회원번호</th>
								<th>회원이름</th>
								<th>회원전호</th>
								<th>회원주소</th>
								<th>가입일자</th>
								<th>고객등급</th>
								<th>거주지역</th>
							</tr>
						</thead>
						<tbody>
						<%  
     						while(rs.next()) { %>
							<tr>
								<td><a href="test_detail.jsp?custno=<%=rs.getInt("custno")%>"><%= rs.getInt("custno") %></a></td>	
								<td><%=rs.getString("custname")%></td>
								<td><%=rs.getString("phone")%></td>
								<td><%=rs.getString("address")%></td>
								<td><%=rs.getString("joindate")%></td>
								<td><%=rs.getString("grade")%></td>
								<td><%=rs.getString("city")%></td>
							</tr>
							<%
							}
							%>			
							<button type="submit">전송</button>			
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