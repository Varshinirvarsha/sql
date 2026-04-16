create database smartwatch;
use smartwatch;

create table watch_data (id int,device_id varchar(30),battery int);

select * from watch_data;

alter table watch_data add heart_rate float;
alter table watch_data add steps_count double;
alter table watch_data add firmware_version varchar(20);

alter table watch_data drop battery;

alter table watch_data rename column device_id to serial_no;
alter table watch_data rename column firmware_version to os_version;

alter table watch_data modify serial_no varchar(50);
alter table watch_data modify heart_rate float;

alter table watch_data add connectivity char(5);

insert into watch_data values
(1,'sw101',72.5,5000,'v1.0','bt'),
(2,'sw102',80.0,6500,'v1.1','wifi'),
(3,'sw103',65.2,4000,'v2.0','bt');

insert into watch_data (id,serial_no,heart_rate,steps_count,os_version,connectivity) values
(4,'sw104',78.5,7000,'v2.1','wifi'),
(5,'sw105',82.3,8000,'v2.2','bt');

insert into watch_data (id,serial_no) values
(6,'sw106'),
(7,'sw107');

insert into watch_data values
(8,'sw108',70.0,4500,'v3.0','bt'),
(9,'sw109',75.5,6000,'v3.1','wifi'),
(10,'sw110',68.0,5200,'v3.2','bt'),
(11,'sw111',77.7,7100,'v3.3','wifi'),
(12,'sw112',69.5,4800,'v3.4','bt'),
(13,'sw113',74.2,5900,'v3.5','wifi'),
(14,'sw114',81.0,8300,'v3.6','bt'),
(15,'sw115',66.6,4300,'v3.7','wifi');

update watch_data set steps_count=9000 where id=1;
update watch_data set os_version='v5.0' where id=2;
update watch_data set serial_no='sw999' where id=3;
update watch_data set connectivity='5g' where id=4;
update watch_data set heart_rate=88.8 where id=5;

alter table watch_data drop connectivity;

select * from watch_data;