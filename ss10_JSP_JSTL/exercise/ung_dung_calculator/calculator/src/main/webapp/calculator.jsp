<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/11/2023
  Time: 11:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form method="get" action="calculator-servlet">
    <table>
        <tr>
            <td>Calculator</td>
            <td></td>
        </tr>

        <tr>
            <td>First operand:</td>
            <td><input type="text" name="sothunhat" value="0" placeholder="so thu nhat"></td>
        </tr>

        <tr>
            <td>Operator:</td>
            <td>
                <select name="calculator">
                    <option value="cong">Cộng</option>
                    <option value="tru">Tru</option>
                    <option value="nhan">Nhan</option>
                    <option value="chia">Chia</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>First operand:</td>
            <td><input type="text" name="sothuhai" value="0" placeholder="so thu hai"></td>
        </tr>

        <tr>
            <td></td>
            <td><input type="submit" id="submit" value="Calculator"></td>
        </tr>
    </table>
</form>
</body>
</html>
