CREATE database university;
use university;
CREATE TABLE Courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(40) UNIQUE
);

CREATE TABLE Students (
student_id INT PRIMARY KEY,
student_name VARCHAR(60) NOT NULL,
course_id INT,
marks INT CHECK (marks >= 0),
FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Courses VALUES
(101,'Data Analytics'),
(102,'SQL'),
(103,'Python');

INSERT INTO Students VALUES
(1,'Disha',102,65),
(2,'Nisha',103,50),
(3,'Trisha',101,96),
(4,'Dhrish',102,79),
(5,'Krish',103,80),
(6,'Avnish',101,85);
select * from courses;
select * from students;
SELECT s.student_name , c.course_id , c.course_name, s.marks
FROM Students s INNER JOIN Courses c
ON s.course_id = c.course_id;

