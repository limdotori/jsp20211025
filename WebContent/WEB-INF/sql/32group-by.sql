SELECT count(CustomerID) FROM Customers;

SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country
ORDER BY 2 DESC
;

-- 연습1 : 나라별 Supplier 수 조회
SELECT Country, count(SupplierID) FROM Suppliers 
GROUP BY Country
ORDER BY 2 DESC;

DESC Customers;
-- 연습2 : 가장 많은 고객이 있는 나라(들) 조회
SELECT * FROM Customers C
SELECT MAX(Count) FROM (
SELECT Country, count(CustomerID) Count FROM Customers
GROUP BY Country ) a
;
-- ORDER BY 2 DESC




SELECT 
    *
FROM
    (SELECT 
        Country, COUNT(CustomerID) Count
    FROM
        Customers
    GROUP BY Country) B
WHERE
    count = (SELECT 
            MAX(Count)
        FROM
            (SELECT 
                Country, COUNT(CustomerID) Count
            FROM
                Customers
            GROUP BY Country) A)
;

-- 연습3 : 가장 적은 고객이 있는 나라(들) 조회
SELECT 
    *
FROM
    (SELECT 
        Country, COUNT(CustomerID) Count
    FROM
        Customers
    GROUP BY Country) B
WHERE
    count = (SELECT 
            MIN(Count)
        FROM
            (SELECT 
                Country, COUNT(CustomerID) Count
            FROM
                Customers
            GROUP BY Country) A)
;

-- 연습4 : 고객별 주문 수 조회 (CustomerID, 주문수)
-- table: Customers, Orders
SELECT CustomerID, Count(OrderID) '주문수'
FROM Orders
GROUP BY CustomerID;

-- 고객이름도 같이 조회
SELECT o.CustomerID, c.CustomerName, Count(o.OrderID) '주문수'
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID;


-- 연습 5 : 고객별 총 주문한 수량 (CustomerID, 총 주문 수량)
-- tables : Orders, OrderDetails
SELECT o.CustomerID, c.CustomerName, sum(Quantity) '총 주문 수량'
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
			  JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID;
