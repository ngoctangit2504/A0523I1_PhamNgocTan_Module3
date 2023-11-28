<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP List Customer</title>
</head>
<body>
<h1>Danh sach khach hang</h1>
<table border="1px">
    <thead>
    <tr>
        <th>Ten</th>
        <th>Ngay sinh</th>
        <th>Dia chi</th>
        <th>Anh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="c" varStatus="list">
        <tr>
                <%--            Ten--%>
            <td>${loop.count}</td>
            <td><c:out value="${c.name}"/></td>
                <%--            Ngay sinh--%>


                <%--            Đia chi--%>
            <td>${s.point}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>