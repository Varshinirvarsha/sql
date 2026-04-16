create database courier_service;
 use courier_service; 
 create table courier_service (id int primary key, parcel_id varchar(20), cost decimal(10,2), weight float, distance double, 
 status char(1), sender_name varchar(50), delivery_mode enum('express','normal'), services set('tracking','insurance'),
 send_date date, send_year year, is_delivered boolean); 
 
 insert into courier_service values (1,'p201',200.50,2.5,100.5,'d','rahul','express','tracking','2023-01-01',2023,1),
 (2,'p202',150.00,1.5,80.0,'p','pooja','normal','insurance','2023-02-02',2023,1),
 (3,'p203',180.75,2.0,90.2,'d','anil','express','tracking,insurance','2023-03-03',2023,0);


 select * from courier_service;