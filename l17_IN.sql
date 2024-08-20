-- 1. Hãy lọc ra tất cả các đơn hàng với điều kiện
-- a. Đơn hàng được giao điến Germany, UK, Brazil.

SELECT * FROM dbo.Orders AS o
WHERE o.ShipCountry IN ('Germany', 'UK', 'Brazil');

-- b. Đơn hàng được giao đến các quốc gia khác Germany, UK, Brazil
SELECT * FROM dbo.Orders AS o
WHERE o.ShipCountry NOT IN ('Germany', 'UK', 'Brazil');

-- 2. Lấy ra các sản phẩm có mã thể loại khác 2,3,4
SELECT * FROM dbo.Products
WHERE dbo.Products.CategoryID NOT IN (2, 3, 4);

-- 3. Liệt kê các nhân viên không phải là nữ từ bảng nhân viên
SELECT * FROM dbo.Employees
WHERE dbo.Employees.TitleOfCourtesy IN ('Ms.', 'Mrs');

-- 4. Lấy ra tất cả các khách hàng đến từ các thành phố: Berlin, London, Warszawa
SELECT * FROM dbo.Customers
WHERE dbo.Customers.City IN ('Berlin', 'London', 'Warszawa');