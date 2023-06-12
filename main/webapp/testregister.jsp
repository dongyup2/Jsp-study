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
			<li><a href="testsalesList.jsp">회원매출조회</a></li>
			<li><a href="index.jsp">홈으로</a></li> </>
	</nav>
	<main>
		<section>
			<div class="table-container">
				<h3 class="center-text">홈쇼핑 회원 등록</h3>
				<form action="testregister.jsp" method="POST">
					<table>
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
<script>
	function validateForm() {
		const custno = document.querySelector("input[name='custno']").value
				.trim();
		const custname = document.querySelector("input[name='custname']").value
				.trim();
		const phone = document.querySelector("input[name='phone']").value
				.trim();
		const address = document.querySelector("input[name='address']").value
				.trim();
		const joindate = document.querySelector("input[name='joindate']").value
				.trim();
		const grade = document.querySelector("input[name='grade']").value
				.trim();
		const city = document.querySelector("input[name='city']").value.trim();

		if (custno === "") {
			alert("회원번호를 입력해주세요.");
			return false;
		} else if (custname === "") {
			alert("회원이름을 입력해주세요.");
			return false;
		} else if (phone === "") {
			alert("회원전화를 입력해.");
			return false;
		} else if (address === "") {
			alert("회원주소를 해주세요.");
			return false;
		} else if (joindate === "") {
			alert("가입일를 입력해주세요.");
			return false;
		} else if (grade === "") {
			alert("고객등급을 입력해주세요.");
			return false;
		} else if (city === "") {
			alert("도시코드를 입력해주세요.");
			return false;
		}

		return true;
	}
</script>
</html>