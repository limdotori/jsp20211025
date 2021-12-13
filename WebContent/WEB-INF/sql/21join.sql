USE test;
-- JOIN : 여러 테이블 조합

INSERT INTO mytable27Customer (firstName, lastName) VALUES ('cha', 'bum');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('park', 'ji');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('son', 'hm');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('lee', 'gang');

SELECT * FROM mytable27Customer;

INSERT INTO mytable28Tel (customerId, tel) VALUES (3, '0101111');
INSERT INTO mytable28Tel (customerId, tel) VALUES (4, '0102222');
INSERT INTO mytable28Tel (customerId, tel) VALUES (4, '0103333');

SELECT * FROM mytable28Tel;

-- join
SELECT * FROM mytable27Customer, mytable28Tel; 
-- cartesign product (카테시안 곱) ; 조인 조건 없을 시

-- SELECT * FROM mytable28Tel, mytable27Customer ; 
-- 3열씩 두 세트로 양 옆에 순서가 바뀌어서 나오게 된다. 

SELECT * FROM mytable27Customer JOIN mytable28Tel ON mytable27Customer.id = mytable28Tel.customerId;

-- alias (별칭)
SELECT * FROM mytable27Customer AS t27 JOIN mytable28Tel AS t28 ON t27.id = t28.customerId;
-- AS 생략 가능
SELECT * FROM mytable27Customer t27 JOIN mytable28Tel t28 ON t27.id = t28.customerId; 


SELECT t27.id, t27.firstName, t28.id, t28.tel 
FROM mytable27Customer t27 JOIN mytable28Tel t28 
ON t27.id = t28.customerId;

SELECT t27.id AS 고객번호, t27.firstName AS 이름, t28.id AS 전화ID, t28.tel AS 전화번호
FROM mytable27Customer t27 JOIN mytable28Tel t28 
ON t27.id = t28.customerId;

SELECT t27.id 고객번호, t27.firstName 이름, t28.id 전화ID, t28.tel 전화번호 -- AS 생략 가능
FROM mytable27Customer t27 JOIN mytable28Tel t28 
ON t27.id = t28.customerId;

-- 예제 : 고객이 주문한 날짜 조회
-- 사용 테이블: Orders, Customers
-- 어느 고객이 어느날 주문 했는지 확인해보는 문제를 풀기

SELECT * FROM Orders; -- 주문한 날짜
SELECT * FROM Customers; -- 고객 이름
-- AS는 생략되어있는 것 까먹지 말기

SELECT c.CustomerName name, o.OrderDate date 
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 예제 : 어떤 직원이 어느 날짜에 주문 받았는지 조회
-- 사용 테이블: Orders, Employees
SELECT e.LastName, e.FirstName, o.OrderDate
FROM Employees e JOIN Orders o 
	ON e.EmployeeID = o.EmployeeID
ORDER BY e.LastName, e.FirstName;
 
SELECT e.LastName, e.FirstName, o.OrderDate
FROM Employees e JOIN Orders o 
     ON e.EmployeeID = o.EmployeeID
ORDER BY e.LastName, e.FirstName
     ;
