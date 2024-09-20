CREATE DATABASE UCP;

USE UCP;
CREATE TABLE DEPT(
id INT PRIMARY KEY,
[name] NVARCHAR(50) NOT NULL,
);



CREATE TABLE TEACHER(
id INT PRIMARY KEY,
[name] NVARCHAR(50) NOT NULL,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES DEPT(id)
ON UPDATE CASCADE
ON DELETE CASCADE
)



INSERT INTO DEPT
(id,[name])
VALUES
(12,'ENGLISH'),
(13,'URDU');

UPDATE DEPT
SET id = 111
WHERE id = 12;

SELECT * FROM DEPT;

INSERT INTO TEACHER
(id , name , dept_id)
VALUES
(101,'SIR SAAD',12),
(102,'SIR USMAN',13),
(103,'SIR ALI',12),
(104,'SIR ZAIN',13);

SELECT *  FROM TEACHER;

CREATE TABLE student(
 rollno INT PRIMARY KEY,
 [name] NVARCHAR(50) NOT NULL,
 age INT,
 city NVARCHAR(50) NOT NULL
 );

 INSERT INTO student 
 (rollno,[name],age,city)
 VALUES 
 (50,'USMAN',25,'LAHORE'),
  (51,'ALI',26,'PK'),
 (52,'FARHAN',27,'KARACHI'),
 (53,'ASAD',28,'SHW');

ALTER TABLE student
ADD study INT  DEFAULT 12;

ALTER TABLE student
DROP COLUMN name;

ALTER TABLE student
ADD  age NVARCHAR;

DELETE FROM student
WHERE name = 'ALI';

TRUNCATE TABLE TEACHER;
 SELECT * FROM TEACHER;

 ALTER TABLE student
 DROP COLUMN [name];
 SELECT * FROM student;



CREATE DATABASE PUNJABUNIVERSITY;

USE PUNJABUNIVERSITY;



CREATE TABLE course(
  id INT PRIMARY KEY,
 [name] NVARCHAR(50) NOT NULL
);



INSERT INTO course
(id,[name])
VALUES
(8,'eng'), 
(2,'phys'),
(4,'urdu'),
(1,' chem'),
(7,'sst');


CREATE TABLE student(
id INT PRIMARY KEY,
[name] NVARCHAR(50) NOT NULL
);



INSERT INTO student
(id , [name])
VALUES
(1 , 'HARRY'),
(2 , 'JACK'),
(3 , 'ROY');


SELECT * FROM student;
SELECT * FROM course;

SELECT * 
FROM student
INNER JOIN course
ON student.id = course.id;

SELECT * 
FROM student AS s
LEFT JOIN course AS c
ON s.id = c.id
WHERE c.id is not null;

SELECT * 
FROM student AS s
FULL JOIN course AS c
ON s.id = c.id;

SELECT * 
FROM student AS s
JOIN course AS c
ON s.name = c.[name];

CREATE TABLE employee(
id INT PRIMARY KEY NOT NULL,
[name] NVARCHAR(50) NOT NULL,
manager_id INT
);

INSERT INTO employee
(id,[name],manager_id)
VALUES 
(101,'BOB',NULL),
(102,'POTER',103),
(105,'PETER',102),
(106,'JACK',101);

SELECT * FROM employee;

SELECT a.name as manager, b.name 
FROM employee AS a
JOIN employee AS b
ON a.id = b.manager_id;

SELECT [name] FROM employee
UNION
SELECT [name] FROM employee;

update student set age = 29 where id = 1

select * from student

alter table student add age int

CREATE TABLE human(
age INT NOT NULL,
[name] varchar(50) NOT null,
sallery INT NOT NULL
);

INSERT INTO human
(age,[name],sallery)
VALUES
(24,'hammad',500000),
(23,'harry',700000),
(21,'peter',900000),
(20,'jackson',1500000);

SELECT * FROM human;

DELETE FROM human
WHERE [name] ='peter';

DELETE FROM human
WHERE age = 20;

UPDATE human
SET age = 89
WHERE age = 23;


CREATE TABLE student1(
rollno INT PRIMARY KEY NOT NULL,
[name] NVARCHAR(50),
marks INT NOT NULL,
grade nvarchar(50) not null,
city NVARCHAR(50) NOT NULL
);

INSERT INTO student1
(rollno,[name],marks,grade,city)
VALUES
(121,'harry',78,'A GRADE','LAHORE'),
(122,'SIR SAAD',77,'B GRADE','SAHIWAL'),
(123,'ZAID',76,'C GRADE','PAKPATAN'),
(124,'SHAN',75,'D GRADE','OKARA'),
(125,'PERWAIZ',74,'E GRADE','RENALA KHURD'),
(126,'NOOR',73,'F GRADE','QUETA');

SELECT* FROM student1;

SELECT avg(marks)
FROM student1;

SELECT [name],marks
FROM student1
WHERE marks > 75;


SELECT [name],marks
FROM student1
WHERE marks > (SELECT avg(marks)
FROM student1);


SELECT rollno , rollno , city , grade , marks
FROM student1
WHERE rollno % 2 = 0;


SELECT [name]
FROM student1
WHERE rollno IN (
    SELECT rollno
    FROM student1
    WHERE rollno % 2 = 0);

	SELECT *
	FROM student1
	WHERE city = 'OKARA';

	SELECT *
	FROM student1
	 WHERE name ='shan';

	 DELETE FROM student1
	 WHERE name = 'shan';
	 SELECT * FROM student1;

	 SELECT (SELECT MAX(marks) FROM student1 )  FROM student1;

	 CREATE VIEW view1 AS
	 SELECT rollno,marks,[name] FROM student1;

	 SELECT * FROM view1
	 WHERE marks > 75;