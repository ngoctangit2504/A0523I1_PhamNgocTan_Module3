<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/1/2023
  Time: 7:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Product</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
<h1>Create new product</h1>
<p class="text-success">
  <c:if test='${requestScope["message"]!=null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/product">
    <button type="button" class="btn btn-primary">Back to product list</button>
  </a>
</p>
<div class="container">
  <form method="post" >
    <fieldset>
      <legend>New Product</legend>
      <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" name="name" class="form-control" id="name">
      </div>
      <div class="mb-3">
        <label for="describe" class="form-label">Describe</label>
        <input type="text" name="describe" class="form-control" id="describe">
      </div>
      <div class="mb-3">
        <label for="price" class="form-label">Price</label>
        <input type="number" name="price" class="form-control" id="price">
      </div>
      <button type="submit" class="btn btn-primary">Create</button>
    </fieldset>
  </form>
</div>

</body>
</html>
