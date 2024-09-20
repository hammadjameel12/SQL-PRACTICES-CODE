CREATE DATABASE university;


USE university;


CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT NOT NULL,
    grade VARCHAR(10) NOT NULL,   
    city VARCHAR(20)            
);

INSERT INTO student (rollno, name, marks, grade, city) VALUES
(1, 'HAMMAD', 989, 'A-GRADE', 'LAHORE'),
(2, 'SAAD', 909, 'B-GRADE', 'PUNE'),
(3, 'SAAD', 929, 'C-GRADE', 'OKARA'),
(4, 'HAMMAD', 919, 'D-GRADE', 'OKARA');  


SELECT * FROM student WHERE marks+10 > 920 AND city = 'lahore' ;
SELECT * FROM student WHERE marks = 909  ;
SELECT * FROM student WHERE marks BETWEEN 900 AND 950  ;
SELECT * FROM student	WHERE city = 'OKARA';
SELECT * FROM student WHERE name ='hammad';
SELECT DISTINCT name FROM student;

SELECT * FROM student WHERE marks > 78;
SELECT * FROM student WHERE city not IN ('LAHORE','OKARA');
SELECT * FROM student ORDER BY city DESC;
SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks DESC;

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT SUM(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(rollno) FROM student;
SELECT city,name, COUNT(rollno) From student GROUP BY city,name;
SELECT city, avg(marks) From student GROUP BY city ORDER BY avg(marks) DESC; 
SELECT grade, COUNT(rollno)  FROM student GROUP BY grade;
SELECT grade, COUNT(marks)  FROM student GROUP BY grade ORDER BY grade; 
SELECT city, COUNT(rollno) FROM student GROUP BY city HAVING MAX(marks) > 900 ;
SELECT marks FROM student WHERE marks>=909 group by marks HAVING MAX(marks) > 909 ORDER BY marks DESC;


UPDATE student 
SET grade = 'O'
WHERE grade = 'A-GRADE';

UPDATE student
 SET marks= 85
 WHERE rollno = 3;

 UPDATE student 
 SET grade = 'B-GRADE'
 WHERE marks > 70;

 UPDATE student 
 SET grade = 'A-GRADE'
 WHERE marks BETWEEN 950 AND 1000;

 UPDATE student 
	SET marks = marks -4;

DELETE FROM student 
WHERE marks<950;
SELECT * FROM student;
 





CREATE DATABASE CLOTHES;
USE CLOTHES;


CREATE TABLE khaadi (
    id INT PRIMARY KEY,
    [name] NVARCHAR(50) NOT NULL,   
    price INT,
    gurenty VARCHAR(20),        
);


INSERT INTO khaadi
(id,name,price,gurenty) VALUES (125, 'lone', 25000, 'MONTHS');


SELECT * FROM khaadi;

CREATE DATABASE softwarehouse;

USE softwarehouse;

CREATE TABLE payment (
    id INT,
    [name] NVARCHAR(50) NOT NULL,  
    mode NVARCHAR(20),           
    city NVARCHAR(50)            
);


INSERT INTO payment VALUES (12, 'hammad', 'CREDIT CARD', 'LAHORE'),
(12, 'hammad', 'CREDIT CARD', 'LAHORE'),
(13, 'SIR SAAD', 'DEBIT CARD', 'LAHORE'),
(14, 'ZAIN', 'CREDIT CARD', 'LAHORE'),
(15, 'USAMA', 'DEBIT CARD', 'LAHORE'),
(16, 'HARIS', 'NET CASH', 'LAHORE'),
(17, 'ALI', 'NET CASH', 'LAHORE');



SELECT * FROM payment;

SELECT mode, COUNT(id) FROM payment GROUP BY mode;

CREATE DATABASE tuition;

USE tuition;

CREATE TABLE teacher (
id int ,
[name] NVARCHAR(50) NOT NULL,
sallery int
);

INSERT INTO teacher
(id , name , sallery )
VALUES
(12,'HAMMAD',500000)

SELECT * FROM teacher;


CREATE DATABASE SUPERIOR;

USE superior;

CREATE TABLE COMPUTERSCIENCE(
 totalstudents INT PRIMARY KEY,
 totalclassrooms INT,
 totalteachers INT,
 adminname NVARCHAR NOT NULL,
 studentname NVARCHAR NOT NULL,
);

INSERT INTO COMPUTERSCIENCE
(totalstudents,totalclassrooms,totalteachers,adminname,studentname)
VALUES 
(10000,25,50,'SIR ZESHAN')

CREATE DATABASE LAPTOP;

USE LAPTOP;

CREATE TABLE hp(
 id INT PRIMARY KEY,
 [name] NVARCHAR(50) NOT NULL,
 price INT ,
 color NVARCHAR(50),
 shop NVARCHAR(50)
);

CREATE TABLE dell(
 id INT PRIMARY KEY,
 [name] NVARCHAR(50) NOT NULL,
 price INT ,
 color NVARCHAR(50),
 shop NVARCHAR(50)
);

INSERT INTO dell
(id,[name],price,color,shop)
VALUES 
(1,'T470',50000,'BLACK','HAFEEZ CENTER')

SELECT * FROM dell;

INSERT INTO hp
(id,[name],price,color,shop)
VALUES
(1,'T470',50000,'BLACK','HAFEEZ CENTER'),
(2,'T470',50000,'BLACK','HAFEEZ CENTER'),
(3,'T470',50000,'BLACK','HAFEEZ CENTER')

SELECT * FROM hp;
SELECT id, COUNT(id) FROM hp GROUP BY id;
SELECT id  FROM hp GROUP BY id ORDER BY id;

CREATE DATABASE PUNJAB;

USE PUNJAB;

CREATE TABLE department(
 id INT PRIMARY KEY,
 [name] NVARCHAR(50)
);

	CREATE TABLE teacher(
	id INT PRIMARY KEY,
	[name] NVARCHAR(50),
	department_id INT
	FOREIGN KEY (department_id) REFERENCES department(id)
	);



