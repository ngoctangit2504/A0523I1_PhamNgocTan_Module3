<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 11/27/2023
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello", "xin chao");
    dic.put("how", "the nao");
    dic.put("book", "quyen vo");
    dic.put("computer", "may tinh");

    String search = request.getParameter("search");

    String result = dic.get(search);
//    PrintWriter out = response.getWriter();
    if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + search);
    } else {
        out.println("Not found");
    }

%>

</body>
</html>
