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
        .p-fontsize{
        	font-size:14px;
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
            height:40px; 
            background-color: blue; 
            padding: 10px;
            color: white;	
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
            <li><a href="testmemberList.jsp">회원목록조회/수정</a></li>
            <li><a href="testsalesList.jsp">회원매출조회</a></li>
            <li><a href="index.jsp">홈으로</a></li>
        </>
    </nav>
    <main>
        <section>
            <h3 class="center-text">쇼핑몰 회원관리 프로그램</h3>
            <p class = p-fontsize>쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.</p>
        	<p class = p-fontsize>프로그램 작성 순서</p>
        	<p class = p-fontsize>1. 회원정보 테이블을 생성한다.</p>
        	<p class = p-fontsize>2. 매출정보 테이블을 생성한다.</p>
        	<p class = p-fontsize>3. 회원정보, 매출정도 테이블에 제시된 문세지의 참조데이터를 추가 생성한다.</p>
        	<p class = p-fontsize>4. 회원정보 입력 화면프로그램을 작성한다.</p>
        	<p class = p-fontsize>5. 회원정보 조회 프로그램을 작성한다.</p>
        	<p class = p-fontsize>6. 회원매출정보 조회 프로그램을 작성한다.</p>
        </section>
    </main>
   <footer>
        <p class="center-text">저작권 관련 정보 &#169; 그린컴퓨터 아카데미</p>
    </footer>
</body>
</html>
