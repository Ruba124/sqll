CREATE TABLE semster (
  NUM INT ,
  name VARCHAR(50)
);

CREATE TABLE courses (
  
  name VARCHAR(50),
  semster_num INT,
  grade VARCHAR(50),
  hours int
);
insert into courses Values
('fields',4,'C+',3),
('circuits',4,'B-',3),
('programming',4,'A',2),
('logic',4,'A',3),
('diffrential',4,'B+',3),
('Quantum',4,'B',2),
('semecoductor',5,'B-',3),
('Dynamics',4,'A',3),
('electronics',5,'B+',3),
('Statics',2,'A',3),
('vibration',2,'A',3),
('math1',2,'A',3),
('math2',3,'B+',3),
('Report',2,'A',3),
('electricity',2,'B-',3),
('Measurement',5,'B+',3),
('Energy',5,'B+',3),
('signals',5,'A',3),
('control',5,'B+',3),
('climate',4,'B+',2),
('projection',1,'A',2),
('drawing',1,'C+',2),
('chemistry',1,'B+',3),
('accounting',1,'A',2),
('critical thinking',1,'A',2),
('production',1,'B',2),
('probaility',6,'A',2);



INSERT INTO semster VALUES
(1, 'fall23' ),
(2, 'spring24'),
(3, 'summer24'),
(4, 'fall24'),
(5,'spring25'),
(6,'summer25');

CREATE TABLE grade(
   g_Value FLOAT,
  grade VARCHAR(50)
  );

INSERT INTO grade VALUES
(4,'A'),
(3.3,'B+'),
(3,'B'),
(2.7,'B-'),
(2.3,'C+'),
(3.7, 'A-');

select
ROUND(sum((grade.g_Value) * (courses.hours)) / sum(courses.hours),2) as semester_gpa
from courses
join semster on semster.NUM = courses.semster_num
join grade on grade.grade = courses.grade
group by semster.NUM;

select 
ROUND(sum((grade.g_Value) * (courses.hours)) / sum(courses.hours),2) as 
commulative_gpa
from courses
join semster on semster.NUM = courses.semster_num
join grade on grade.grade = courses.grade;



