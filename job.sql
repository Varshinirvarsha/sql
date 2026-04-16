create database job_portal;
 use job_portal; 

create table job_portal (id int primary key, job_id varchar(20), salary decimal(10,2), rating float, experience double, 
type char(1), company_name varchar(50), mode enum('remote','onsite'), skills set('java','sql'),
 post_date date, post_year year, is_open boolean); 
 
 insert into job_portal values (1,'j101',50000.50,4.5,2.5,'i','tcs','remote','java','2023-01-01',2023,1),
 (2,'j102',60000.00,4.0,3.0,'s','infosys','onsite','sql','2023-02-02',2023,1),
 (3,'j103',55000.75,4.2,2.8,'i','wipro','remote','java,sql','2023-03-03',2023,0); 
 
select * from job_portal;