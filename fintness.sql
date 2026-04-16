create database fitness; 
use fitness;

 create table fitness_tracker (id int primary key, user_id varchar(20), calories decimal(8,2), heart_rate float, steps double,
 gender char(1), user_name varchar(50), activity enum('walk','run'), features set('gps','sensor'), 
 record_date date, record_year year, is_active boolean);
 
 insert into fitness_tracker values (1,'u101',500.50,80.5,6000,'m','ravi','walk','gps','2023-01-01',2023,1),
 (2,'u102',300.00,85.0,4000,'f','asha','run','sensor','2023-02-02',2023,1),
 (3,'u103',450.75,78.2,5500,'m','kiran','walk','gps,sensor','2023-03-03',2023,0);
 
 select * from fitness_tracker;