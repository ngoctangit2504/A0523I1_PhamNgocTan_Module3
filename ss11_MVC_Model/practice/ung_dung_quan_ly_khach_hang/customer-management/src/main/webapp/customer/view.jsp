<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 11/29/2023
  Time: 6:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View customer</title>
</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="/customer">Back to customer list</a>
</p>
<fieldset>
    <legend>Detail</legend>
    <table border="3">
        <tr>
            <td>Name: </td>
            <td>${requestScope["customer"].getName()}</td>
        </tr>
        <tr>
            <td>Email: </td>
            <td>${requestScope["customer"].getEmail()}</td>
        </tr>
        <tr>
            <td>Address: </td>
            <td>${requestScope["customer"].getAddress()}</td>
        </tr>
    </table>
</fieldset>
</body>
</html>
