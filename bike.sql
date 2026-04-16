create database bike;
 use bike;
 
 create table bike_service (id int primary key, bike_id varchar(20), cost decimal(10,2), mileage float, distance double,
 type char(1), bike_name varchar(50), service enum('free','paid'), parts set('oil','brake'),
 service_date date, service_year year, is_completed boolean, mechanic_id int); 
 
 insert into bike_service values (1,'b101',500.50,40.5,100.5,'s','shine','free','oil','2023-01-01',2023,1,101),
 (2,'b102',800.00,35.0,120.0,'c','pulsar','paid','brake','2023-02-02',2023,1,102),
 (3,'b103',650.75,38.2,110.2,'s','splendor','free','oil,brake','2023-03-03',2023,0,103); 
 
select * from bike_service;