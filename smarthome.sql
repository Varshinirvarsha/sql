create database smarthome;
use smarthome;

create table smart_home_devices (id int primary key, device_id varchar(20), power_usage decimal(8,2),
temperature float, voltage double, status char(1), device_name varchar(50), mode enum('auto','manual'),
 features set('wifi','bluetooth','voice'), install_date date, warranty_year year, is_active boolean);

insert into smart_home_devices values
(1,'dev101',120.50,25.5,220.45,'a','ac','auto','wifi,voice','2023-01-10',2023,1),
(2,'dev102',80.00,30.2,210.10,'m','fan','manual','wifi','2022-05-15',2022,1),
(3,'dev103',60.75,22.8,215.30,'a','light','auto','bluetooth','2023-08-20',2023,0);

select * from smart_home_devices;