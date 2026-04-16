create database parking;
 use parking;
 
 create table smart_parking (id int primary key, slot_id varchar(20), fee decimal(8,2), duration float, distance double,
 type char(1),vehicle_name varchar(50), mode enum('auto','manual'), features set('camera','sensor'), 
 park_date date, park_year year, is_occupied boolean);
 
 insert into smart_parking values (1,'s101',50.50,2.5,1.2,'c','car','auto','camera','2023-01-01',2023,1),
 (2,'s102',30.00,1.5,0.8,'b','bike','manual','sensor','2023-02-02',2023,1),
 (3,'s103',40.75,2.0,1.0,'c','car','auto','camera,sensor','2023-03-03',2023,0);
 
 select * from smart_parking;