-- product랑 oderdetails 사용하기

-- 상품별 판매수량 (quantity -> orderdetails)
SELECT p.ProductID, p.ProductName, sum(od.ProductID)
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID
;

-- 매출액을 계산하기 위한 price 는 products 테이블에 위치 
-- 상품별 매출액
SELECT p.ProductID, p.ProductName, sum(od.Quantity) * p.Price '합'
FROM Products p JOIN OrderDetails od ON od.ProductID = p.ProductID
GROUP BY p.ProductID
;

-- 날짜별 매출액 (orderDate -> orders)

SELECT o.OrderDate, od.ProductID,
       p.ProductName, p.Price, od.Quantity,
       sum(p.Price * od.Quantity) '합'
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
			  JOIN Products p ON od.ProductID = p.ProductID
GROUP BY o.OrderDate
ORDER BY o.OrderDate
;
