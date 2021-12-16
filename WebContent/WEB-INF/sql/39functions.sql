USE test;

-- CONCAT : 스트링 연결 함수
SELECT concat('abc', 'def') AS newStr; 

SELECT EmployeeID, concat(LastName, ' ' ,FirstName) Name, BirthDate, Notes FROM Employees;

-- SUBSTR : 부분문자열
SELECT substr('hello wolrd', 1, 4); -- 원본문자열, 시작위치(1부터시작), 길이
-- world 만 조회 되도록 
SELECT substr('hello world', 7, 5);

-- IFNULL : null을 다른 값으로 (조회할 때만 해당)
SELECT CustomerName, IFNULL(ContactName, 'none') ContactName FROM Customers
ORDER BY CustomerID DESC
;

SELECT * FROM Customers ORDER BY CustomerID DESC;

-- coalesce : 첫번째로 null아닌 값
SELECT coalesce(null, null, 'hello', null, 'world');

SELECT CustomerName, coalesce(ContactName, 'none') FROM Customers ORDER BY CustomerID DESC;

-- now
SELECT now();

-- 연습 : Customers 테이블 조회
--      단, Address, City, PostalCode, Country 컬럼을
--          ','를 구분자로 하여 연결된 값을 
--          FullAddress라는 컬럼으로 조회
--          또한 Address, City, PostalCode, Country 중 null값이 있는 경우
--               그 컬럼은 빈 스트링'' 으로 연결 
SELECT 
    CustomerID,
    CustomerName,
    ContactName,
    CONCAT(IFNULL(Address, ''),
            ', ',
            IFNULL(City, ''),
            ', ',
            IFNULL(PostalCode, ''),
            ', ',
            IFNULL(Country, '')) FullAddress
FROM
    Customers;
