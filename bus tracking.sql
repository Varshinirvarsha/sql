create database bus_tracking; 
use bus_tracking;

 create table bus_tracking (id int primary key, bus_id varchar(20), fare decimal(8,2), speed float, distance double, 
 type char(1), route_name varchar(50), mode enum('city','intercity'), features set('gps','camera'),
 travel_date date, travel_year year, is_running boolean); 
 
 insert into bus_tracking values (1,'b101',50.50,40.5,20.5,'c','route1','city','gps','2023-01-01',2023,1),
 (2,'b102',80.00,50.0,30.0,'i','route2','intercity','camera','2023-02-02',2023,1),
 (3,'b103',60.75,45.2,25.2,'c','route3','city','gps,camera','2023-03-03',2023,0);
 
 select * from bus_tracking;