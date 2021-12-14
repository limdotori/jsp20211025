USE test;

-- count: 개수 
-- Customers 테이블의 row 수
SELECT count(*) FROM Customers;
SELECT * FROM Customers;
SELECT count(CustomerID) FROM Customers;
SELECT count(ContactName) FROM Customers; -- null 은 count하지 않음
SELECT * FROM Customers WHERE ContactName IS NULL;

SELECT * FROM Customers ORDER BY Country;
SELECT count(DISTINCT Country) FROM Customers;

-- 연습1: Suppliers 의 city 컬럼의 값이 중복없이 몇 개 있는지?
SELECT count(DISTINCT city) FROM Suppliers;
-- 연습2: Suppliers 의 country 컬럼의 값이 중복없이 몇 개 있는지?
SELECT COUNT(DISTINCT country) FROM Suppliers;

-- 연습3 : Seafood가 몇 번 주문되었는 지 조회
SELECT count(*)
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
					 JOIN Categories ct ON p.CategoryID = ct.CategoryID 
WHERE ct.CategoryName = 'Seafood';

-- 연습4 : Seafood를 한 번이라도 주문한 적이 있는 고객 수 조회
SELECT c.CustomerID, c.CustomerName, ct.CategoryName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
					   JOIN	OrderDetails od ON o.OrderID = od.OrderID
					   JOIN Products p ON p.ProductID = od.ProductID
					   JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName='seafood'
ORDER BY 1;

-- 위의 식을 활용해서 아래의 count 만들기
SELECT count(DISTINCT c.CustomerID) FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
                       JOIN OrderDetails od ON o.OrderID = od.OrderID
                       JOIN Products p ON p.ProductID = od.ProductID
                       JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = 'Seafood'
ORDER BY 1;

