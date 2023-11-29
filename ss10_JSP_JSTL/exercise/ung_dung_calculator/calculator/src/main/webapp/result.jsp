<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/11/2023
  Time: 11:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<h1>Trang này hiển thị kết quả</h1>
<%
    float ketqua = (float)request.getAttribute("ketqua");
    String thongbao = (String)request.getAttribute("thongbao");
    float sothunhat = (float)request.getAttribute("sothunhat");
    float sothuhai = (float)request.getAttribute("sothuhai");
    String dau  = (String) request.getAttribute("dau");
%>
<h1>Result: <%=sothunhat + dau + sothuhai + " = " + ketqua%></h1>
<p><%= thongbao %></p>
</body>
</html>
