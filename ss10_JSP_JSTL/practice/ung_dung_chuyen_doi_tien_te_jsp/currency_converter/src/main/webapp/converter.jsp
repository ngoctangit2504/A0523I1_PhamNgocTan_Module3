<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 11/27/2023
  Time: 8:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Converter</title>
</head>
<body>
<%
  float rate = Float.parseFloat(request.getParameter("rate"));
  float usd = Float.parseFloat(request.getParameter("usd"));

  float vnd = rate * usd;
%>

<h1>Rate: <%=rate%></h1>
<h1>USD: <%=usd%></h1>
<h1>VND: <%=vnd%></h1>
</body>
</html>
