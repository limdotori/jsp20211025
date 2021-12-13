USE test;

SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

-- 컬럼의 수가 같은 조회 결과의 합집합
SELECT firstName FROM mytable27Customer

UNION
-- 합집합과 같은 뜻으로 이해하면 쉽다.

SELECT lastName FROM mytable27Customer;

-- 기본적인 뜻으로, 합집합 했을 때 겹치는 값은 생략된다
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('ji', 'sj');

-- 그래서 합집합 했을 때, 중복된 값도 조회되게 하려면 union All을 
-- 사용하면 된다.
SELECT firstName FROM mytable27Customer
UNION ALL
SELECT lastName FROM mytable27Customer;

-- union 사용해서 full outer join
SELECT * FROM mytable27Customer; -- 3, 4, 5, 6, 7
SELECT * FROM mytable28Tel; -- 1, 3, 4

SELECT * FROM mytable27Customer c LEFT JOIN mytable28Tel t ON c.id = t.customerId
UNION
SELECT * FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerId;

-- 연습 : 고객명과, 직원의 LastName을 하나의 컬럼으로 조회
SELECT CustomerName FROM Customers
UNION
SELECT LastName FROM Employees
ORDER BY 1
