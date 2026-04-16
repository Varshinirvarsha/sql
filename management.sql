create database event_management; 
use event_management;

 create table eventmanagement (id int primary key, event_id varchar(20), budget decimal(8,2), rating float, attendees double,
 type char(1), event_name varchar(50), mode enum('online','offline'), services set('food','music'), event_date date,
 event_year year, is_success boolean); 
 
 insert into eventmanagement values (1,'e101',10000.50,4.5,200,'c','fest','offline','food','2023-01-01',2023,1),
 (2,'e102',5000.00,4.0,150,'s','seminar','online','music','2023-02-02',2023,1),
 (3,'e103',8000.75,4.2,180,'c','conference','offline','food,music','2023-03-03',2023,0);
 
 
 select * from eventmanagement;