use quanlybanhang;

SELECT * FROM customer;
SELECT * FROM `order`;
SELECT * FROM orderdetail;
SELECT * FROM product;

INSERT INTO customer (cId,cName,cAge)
VALUES ('1', 'Minh Quan', '10');
INSERT INTO customer (cId,cName,cAge)
VALUES ('2', 'Ngoc Oanh', '20'),
('3', 'Hong Ha', '50');

INSERT INTO `order` (oId, cId, oDate, oTotalPrice)
VALUES ('1', '1', '2006-3-21',null),
('2', '2', '2006-3-23',null),
('3', '1', '2006-3-16',null);

INSERT INTO product (pId, pName, pPrice)
VALUES ('1', 'May Giat', '3'),
       ('2', 'Tu Lanh', '5'),
       ('3', 'Dieu Hoa', '7'),
       ('4', 'Quat', '1'),
       ('5', 'Bep Dien', '2');
       
INSERT INTO orderdetail (oId, pId, odQTY)
VALUES ('1', '1', '3'),
       ('1', '3', '7'),
       ('1', '4', '2'),
       ('2', '1', '1'),
       ('3', '1', '8'),
       ('2', '5', '4'),
       ('2', '3', '3');
       
-- Hiển thị các thông tin gồm oId, oDate, oPrice của tất cả các hóa đơn có trong bảng order.
SELECT oId, oDate, oTotalPrice
from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách.
SELECT 
    c.cId AS CustomerID,
    c.cName AS CustomerName,
    c.cAge AS CustomerAge,
    o.oId AS OrderID,
    o.oDate AS OrderDate,
    p.pName AS ProductName,
    od.odQTY AS Quantity
FROM 
    customer c
JOIN `order` o ON c.cId = o.cId
JOIN orderdetail od ON o.oId = od.oId
JOIN product p ON od.pId = p.pId;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
    c.cId AS CustomerID,
    c.cName AS CustomerName
FROM 
    customer c
LEFT JOIN 
    `order` o ON c.cId = o.cId
LEFT JOIN 
    orderdetail od ON o.oId = od.oId
LEFT JOIN 
    product p ON od.pId = p.pId
WHERE 
    p.pId IS NULL;
    
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
SELECT 
    o.oId AS OrderID,
    o.oDate AS OrderDate,
    SUM(od.odQTY * p.pPrice) AS TotalPrice
FROM 
    `order` o
JOIN 
    orderdetail od ON o.oId = od.oId
JOIN 
    product p ON od.pId = p.pId
GROUP BY 
    o.oId, o.oDate;