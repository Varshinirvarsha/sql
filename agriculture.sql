create database smartagriculture;
 use smartagriculture;
 
 create table smartagriculture (id int primary key, field_id varchar(20), yield decimal(10,2), temperature float, rainfall double, soil char(1),
 crop_name varchar(50), season enum('kharif','rabi'), tools set('tractor','sprayer'), harvest_date date,
 harvest_year year, is_profitable boolean, water_level int, fertilizer_used varchar(30));
 
 insert into smartagriculture values 
 (1,'f101',2000.50,30.5,100.5,'c','rice','kharif','tractor','2023-01-01',2023,1,70,'urea'),
 (2,'f102',1500.00,25.0,80.0,'l','wheat','rabi','sprayer','2023-02-02',2023,1,60,'dap'),
 (3,'f103',1800.75,28.2,90.2,'c','maize','kharif','tractor,sprayer','2023-03-03',2023,0,65,'npk'); 
 
select * from smartagriculture;