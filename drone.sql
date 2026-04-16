create database drone_delivery;
 use drone_delivery; 
 
 create table drone_delivery (id int primary key, drone_id varchar(20), cost decimal(10,2), speed float, range_km double, status char(1), 
 item_name varchar(50), delivery_mode enum('auto','manual'), services set('gps','camera'), 
 delivery_date date, delivery_year year, is_delivered boolean, battery_level int);
 
 insert into drone_delivery values (1,'d101',500.50,60.5,10.2,'a','parcel','auto','gps','2023-01-01',2023,1,80),
 (2,'d102',300.00,50.0,8.5,'m','food','manual','camera','2023-02-02',2023,1,70),
 (3,'d103',450.75,55.2,9.0,'a','medicine','auto','gps,camera','2023-03-03',2023,0,60);
 
 select * from drone_delivery;