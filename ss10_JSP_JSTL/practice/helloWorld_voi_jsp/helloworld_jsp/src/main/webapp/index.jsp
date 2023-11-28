<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<h2>c:remove example</h2>
<c:set scope="request" var="greeting" value="Hello every body" />
Greeting: <c:out value="${greeting}"/>
<br/><br/>
<c:remove scope="request" var="greeting" />
After remove:
<br/>
Greeting: <c:out value="${greeting}"/>
</body>
</html>