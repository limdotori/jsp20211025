USE test;
-- foreign key (외래키, 참조키)

CREATE TABLE mytable27Customer (
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(255),
    lastName VARCHAR(255)
);
DESC mytable27Customer;

CREATE TABLE mytable28Tel (
	id INT PRIMARY KEY AUTO_INCREMENT,
    customerId INT,
    tel VARCHAR(255),
    
    -- foreign키가 references를 참조하고있다.
    FOREIGN KEY (customerID) REFERENCES mytable27Customer(id)
);
DESC mytable28Tel;

INSERT INTO mytable27Customer (firstName, lastName) VALUES ('hong', 'gildong');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('son', 'hm');
SELECT * FROM mytable27Customer;

INSERT INTO mytable28Tel (customerId, tel) VALUES (1, '01099999999');
INSERT INTO mytable28Tel (customerId, tel) VALUES (2, '01088888888');
INSERT INTO mytable28Tel (customerId, tel) VALUES (2, '01077777777');
SELECT * FROM mytable28Tel;

INSERT INTO mytable28Tel (customerId, tel) VALUES (3, '01066666666'); -- 참조키가 존재하지 않는 오류 발생


-- 삭제 
DELETE FROM mytable27Customer WHERE id = 2; -- 전화번호 테이블에서 참조하는 중이어서 삭제 안됨

DELETE FROM mytable28Tel WHERE customerId = 2;
DELETE FROM mytable27Customer WHERE id = 2; -- ok

SELECT * FROM mytable28Tel;
SELECT * FROM mytable27Customer;

-- foreign key 제약사항삭제
SHOW CREATE TABLE mytable28Tel;
'CREATE TABLE `mytable28Tel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `mytable28Tel_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `mytable27Customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci'
;
ALTER TABLE mytable28Tel DROP FOREIGN KEY mytable28Tel_ibfk_1;

-- 제약사항 삭제 후 고객테이블 먼저 삭제
DELETE FROM mytable27Customer WHERE id = 1;
SELECT * FROM mytable27Customer;
SELECT * FROM mytable28Tel;
