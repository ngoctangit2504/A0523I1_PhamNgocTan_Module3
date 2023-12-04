<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/12/2023
  Time: 11:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
  <h1>Product detail</h1>
  <p>
    <a href="/product"><button type="button" class="btn btn-primary">Back to product list</button></a>
  </p>
  <table class="table table-striped">
    <tr>
      <td>Id:</td>
      <td>${requestScope["product"].getId()}</td>
    </tr>
    <tr>
      <td>Name: </td>
      <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
      <td>Describe: </td>
      <td>${requestScope["product"].getDescribe()}</td>
    </tr>
    <tr>
      <td>Price: </td>
      <td>${requestScope["product"].getPrice()}</td>
    </tr>
  </table>
</div>
</body>
</html>
