<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/1/2023
  Time: 8:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
<h1>Edit Product</h1>
<p class="text-success">
  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/product">Back to product list</a>
</p>
<div class="container">
  <form method="post">
    <fieldset>
      <legend>Product information</legend>
      <table class="table">
        <tr>
          <td>Name:</td>
          <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
        </tr>
        <tr>
          <td>Describe:</td>
          <td><input type="text" name="describe" id="describe" value="${requestScope["product"].getDescribe()}"></td>
        </tr>
        <tr>
          <td>Describe:</td>
          <td><input type="number" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="Update product"></td>
        </tr>
      </table>
    </fieldset>
  </form>

</div>
</body>
</html>
