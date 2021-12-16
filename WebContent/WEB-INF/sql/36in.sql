USE test;
SELECT * FROM Customers
WHERE Country = 'Germany'
    OR Country = 'Mexico'
    OR Country = 'USA'
;

SELECT * FROM Customers
WHERE Country IN ('Germany', 'Mexico', 'USA');

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'Mexico', 'USA');


-- 연습1 : 국가가 'USA', 'UK'인 Supplier들 조회 (IN 키워드 사용)
SELECT * FROM Suppliers WHERE Country IN ('usa', 'uk');
-- 연습2 : 국가가 'USA', 'UK'가 아닌 Supplier들 조회 (NOT IN 키워드 사용)
SELECT * FROM Suppliers WHERE Country NOT IN ('usa', 'uk');

SELECT * FROM Products;
SELECT * FROM Categories;

-- 연습3 : Meat 또는 Seafood 카테고리에 속한 상품명 조회

SELECT * FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE CategoryName LIKE 'Meat%' OR CategoryName = 'Seafood'
;
-- 내가 문제 푼 방식은 IN ->
SELECT * FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE CategoryName IN ('Meat/Poultry', 'Seafood')
;

-- SUBQUERY 활용
SELECT * FROM Categories WHERE CategoryName IN  ('Meat/Poultry', 'Seafood');

SELECT * FROM Products WHERE CategoryID IN (6, 8);

SELECT * FROM Products 
WHERE CategoryID IN ( SELECT CategoryID FROM Categories WHERE CategoryName IN  ('Meat/Poultry', 'Seafood') );

-- 연습4 : Supplier가 있는 나라에 살고 있는 고객 목록 조회
SELECT * FROM Customers 
WHERE Country IN(SELECT Country 
				 FROM Suppliers);


SELECT country
FROM Suppliers;

SELECT * 
FROM Customers
WHERE Country IN (SELECT country 
                  FROM Suppliers)
;