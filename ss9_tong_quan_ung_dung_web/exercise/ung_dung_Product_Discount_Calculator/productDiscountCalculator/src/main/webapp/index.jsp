<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>
<form action="result" method="post">
    <h1>Product Discount Calculator</h1>

    <table>
        <tr>
            <th>
                <label for="pd">Product Description:</label>
            </th>
            <td>
                <input type="text" id="pd" name="pd" placeholder="Mô tả của sản phẩm">
            </td>
        </tr>

        <tr>
            <th>
                <label for="lp">List Price:</label>
            </th>
            <td>
                <input type="text" id="lp" name="lp" placeholder="Giá niêm yết của sản phẩm">
            </td>
        </tr>

        <tr>
            <th>
                <label for="dp">Discount Percent:</label>

            </th>
            <td>
                <input type="text" id="dp" name="dp" placeholder="Tỷ lệ chiết khấu (phần trăm)">
            </td>
        </tr>
    </table>
    <input type="submit" id="submit" value="Calculate Discount">
</form>
</body>
</html>