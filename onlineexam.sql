create database online_exam; 
use online_exam;

 create table online_exam (id int primary key, exam_id varchar(20), marks decimal(8,2), accuracy float, duration double,
 level char(1), student_name varchar(50), mode enum('mcq','theory'), topics set('java','sql'), 
 exam_date date, exam_year year, is_pass boolean); 
 
 insert into online_exam values (1,'e201',85.50,90.5,2.0,'a','meena','mcq','java','2023-01-01',2023,1),
 (2,'e202',70.00,80.0,1.5,'b','arun','theory','sql','2023-02-02',2023,1),
 (3,'e203',60.75,75.2,1.8,'a','divya','mcq','java,sql','2023-03-03',2023,0);
 
 select * from online_exam;