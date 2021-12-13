SELECT * FROM Categories;
SELECT * FROM Products;

-- SELECT p.ProduectID, p.ProductName,  c.CategoryName, p.Unit, p.Price로 
-- 나오게 출력하기

 SELECT c.CategoryName, p.ProductName, p.Unit, p.Price
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
ORDER BY 1 , 2;

DESC Products;