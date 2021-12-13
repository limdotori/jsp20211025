USE test;

CREATE TABLE mytable20 (
    col1 INT,
    col2 INT
);
DESC mytable20;
-- not null 제약 사항 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT NOT NULL;
-- not null 제약 사항 삭제
ALTER TABLE mytable20 MODIFY COLUMN col1 INT NULL;

-- 제약사항 추가 전 제약사항을 위반하는 레코드가 있을 시
-- 제약사항 추가하는 쿼리 실행 안됨
INSERT INTO mytable20 (col2) VALUES (3);
SELECT 
    *
FROM
    mytable20;

-- DEFAULT 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT DEFAULT 0;

-- DEFAULT 삭제
ALTER TABLE mytable20 ALTER col1 DROP DEFAULT;

DESC mytable20; 

-- check 제약사항 추가
ALTER TABLE mytable20 ADD CHECK (col1 > 10);

-- 제약사항 확인
SHOW CREATE TABLE mytable20;

CREATE TABLE `mytable20` (
  `col1` int(11),
  `col2` int(11) DEFAULT NULL,
  CONSTRAINT `CONSTRAINT_1` CHECK (`col1` > 10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

-- check 제약사항 삭제
ALTER TABLE mytable20 DROP CONSTRAINT CONSTRAINT_1;

DESC  mytable20;

-- unique 제약사항 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT UNIQUE;

-- unique 제약사항 삭제
ALTER TABLE mytable20 DROP INDEX col1;

-- index 없는 경우에는
SELECT * FROM mytable20 WHERE col1 = 10; -- 모든 레코드 탐색

-- index 있는 경우에는
SELECT * FROM mytable20 WHERE col1 = 10; -- col1의 인덱스를 먼저 탐색 (효율적 탐색)

TRUNCATE mytable20; -- 모든 레코드 삭제
-- primary key 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT PRIMARY KEY;

-- primary key 삭제
ALTER TABLE mytable20 DROP PRIMARY KEY;













