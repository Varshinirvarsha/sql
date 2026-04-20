create database instagram;
use instagram;

create table user_info (user_id char(4) primary key,userName varchar(20) not null unique,password varchar(20) check (length(password) > 8),
    email varchar(30),phone_number bigint unique,dob date,age int,country varchar(10));
    
    desc user_info;

insert into user_info values
('U001','Asha','password123','asha@gmail.com',9876543210,'2002-05-10',22,'India'),
('U002','Ravi','securepass1','ravi@gmail.com',9876543211,'2001-03-15',23,'India'),
('U003','John','mypassword9','john@gmail.com',9876543212,'2000-07-20',24,'USA'),
('U004','Priya','strongpass2','priya@gmail.com',9876543213,'2003-09-25',21,'India'),
('U005','Arjun','arjunpass3','arjun@gmail.com',9876543214,'2004-01-30',20,'India'),
('U006','Meena','meenapass4','meena@gmail.com',9876543215,'2005-11-12',19,'India'),
('U007','David','davidpass5','david@gmail.com',9876543216,'2002-08-18',22,'UK'),
('U008','Sara','sarapass66','sara@gmail.com',9876543217,'2003-02-14',21,'USA'),
('U009','Kiran','kiranpass7','kiran@gmail.com',9876543218,'2001-12-05',23,'India'),
('U010','Neha','nehapass88','neha@gmail.com',9876543219,'2000-06-22',24,'India'),
('U011','Ali','alipassword','ali@gmail.com',9876543220,'2004-04-10',20,'UAE'),
('U012','Zara','zarapass99','zara@gmail.com',9876543221,'2002-10-08',22,'UK'),
('U013','Vikram','vikrampass','vikram@gmail.com',9876543222,'2003-03-19',21,'India'),
('U014','Anu','anupassword','anu@gmail.com',9876543223,'2005-07-27',19,'India'),
('U015','Rahul','rahulpass1','rahul@gmail.com',9876543224,'2001-01-01',23,'India');

select * from user_info;

select * from user_info where age > 21;
select * from user_info where age < 22;
select * from user_info where age >= 23;
select * from user_info where age <= 20;
select * from user_info where country != 'India';

select * from user_info where age > 20 and country='India';
select * from user_info where age < 21 or country='USA';
select * from user_info where not country='India';
select * from user_info where age > 20 and age < 25;
select * from user_info where country='India' or country='UK';

select * from user_info where country in ('India','USA');
select * from user_info where age in (20,21,22);
select * from user_info where country not in ('India');
select * from user_info where age not in (19,20);
select * from user_info where userName in ('Asha','Ravi','Neha');

select * from user_info where email is null;
select * from user_info where email is not null;
select * from user_info where phone_number is null;
select * from user_info where phone_number is not null;
select * from user_info where dob is not null;

select * from user_info where userName like 'A%';
select * from user_info where email like '%@gmail.com';
select * from user_info where userName like '%a';
select * from user_info where userName not like 'R%';
select * from user_info where email not like '%@gmail.com';

select * from user_info where age between 20 and 23;
select * from user_info where dob between '2001-01-01' and '2003-12-31';
select * from user_info where age not between 20 and 22;
select * from user_info where dob not between '2002-01-01' and '2004-12-31';
select * from user_info where age between 19 and 24;