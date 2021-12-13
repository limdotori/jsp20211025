USE test;

-- PRIMARY KEY (기본키, 주키)
-- NOT NULL, UNIQUE

CREATE TABLE mytable17 (
	col1 INT NOT NULL UNIQUE,
    col2 INT
);

DESC mytable17;

CREATE TABLE mytable18 (
	col1 INT PRIMARY KEY,
    col2 INT
);

DESC mytable18;

-- 

CREATE TABLE mytable19Student (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
    birth DATE NOT NULL,
    address VARCHAR(255) NOT NULL
);

DESC mytable19Student;

SELECT * FROM mytable19Student;
INSERT INTO mytable19Student (name, birth, address) VALUES ('kim', '2000-01-01', 'seoul');
INSERT INTO mytable19Student (name, birth, address) VALUES ('lim', '1995-09-22', 'songpa');

DESC Customers;
DESC Employees;
DESC Suppliers;


