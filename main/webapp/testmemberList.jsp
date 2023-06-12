<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

.p-fontsize {
	font-size: 14px;
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

.table-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100%;
}

table {
	border-collapse: collapse;
}

table td, table th {
	border: 1px solid black;
	padding: 8px;
	text-align: center;
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
			<li><a href="testmemberlistselect.jsp">회원매출조회</a></li>
			<li><a href="index.jsp">홈으로</a></li> </>
	</nav>
	<main>
		<section>
			<div class="table-container">
				<h3 class="center-text">홈쇼핑 회원 등록</h3>
				<form action="testregister.jsp" method="POST">
					<table>
						<%
						request.setCharacterEncoding("utf-8");
						if (request.getMethod().equals("POST")) {
							String custnoStr = request.getParameter("custno");
							int custno = Integer.parseInt(custnoStr);
							String custname = request.getParameter("custname");
							String phone = request.getParameter("phone");
							String address = request.getParameter("address");
							String joindate = request.getParameter("joindate");
							String grade = request.getParameter("grade");
							String city = request.getParameter("city");

							Class.forName("org.mariadb.jdbc.Driver");
							Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/green02", "root", "1234");
							String sql = "insert into member_tbl_02(custno, custname, phone, address, joindate, grade, city) values(?, ?, ?, ?, ?, ?, ?);";

							PreparedStatement pstmt = conn.prepareStatement(sql);
							pstmt.setInt(1, custno);
							pstmt.setString(2, custname);
							pstmt.setString(3, phone);
							pstmt.setString(4, address);
							pstmt.setString(5, joindate);
							pstmt.setString(6, grade);
							pstmt.setString(7, city);
							pstmt.executeUpdate();

							pstmt.close();
							conn.close();
						}
						%>

						<tr>
							<td>회원번호</td>
							<td><input name="custno"></td>
						</tr>
						<tr>
							<td>회원이름</td>
							<td><input name="custname"></td>
						</tr>
						<tr>
							<td>회원전화</td>
							<td><input name="phone"></td>
						</tr>
						<tr>
							<td>회원주소</td>
							<td><input name="address"></td>
						</tr>
						<tr>
							<td>가입일자</td>
							<td><input name="joindate"></td>
						</tr>
						<tr>
							<td>고객등급(A:VIP,B:일반,C:직원)</td>
							<td><input name="grade"></td>
						</tr>
						<tr>
							<td>도시코드</td>
							<td><input name="city"></td>
						</tr>
						<tr>
							<input type="submit" name="submit" value="등록">
							<input type="submit" name="submit" value="조회">
						</tr>
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