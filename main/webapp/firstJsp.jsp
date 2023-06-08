<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    table {
        border-collapse: collapse;
        width: 50%;
        margin: auto;
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: center;
    }
    th {
        background-color: #f2f2f2;
        font-weight: bold;
    }
</style>
<title>구구단</title>
</head>
<body>
<table>
    <thead>
        <tr>
            <th colspan="9">구구단</th>
        </tr>
    </thead>
    <tbody>
        <%
            for (int i = 1; i < 10; i++) {
        %>
        <tr>
            <%
                for (int j = 1; j < 10; j++) {
                    int result = i * j;
            %>
            <td><%= i + "x" + j + "=" + result %></td>
            <%
                }
            %>
        </tr>
        <%
            }
        %>
    </tbody>
</table>
</body>
</html>
