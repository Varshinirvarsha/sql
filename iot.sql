create database iot_sensor_network;
use iot_sensor_network;

create table sensor_data (id int,sensor_id varchar(30),value int);

select * from sensor_data;

alter table sensor_data add temperature float;
alter table sensor_data add humidity double;
alter table sensor_data add location varchar(30);

alter table sensor_data drop value;

alter table sensor_data rename column sensor_id to device_id;
alter table sensor_data rename column location to zone;

alter table sensor_data modify device_id varchar(50);
alter table sensor_data modify temperature float;

alter table sensor_data add status char(10);

insert into sensor_data values
(1,'s101',25.5,60.2,'zone1','on'),
(2,'s102',28.0,55.5,'zone2','off'),
(3,'s103',22.2,65.0,'zone3','on');

insert into sensor_data (id,device_id,temperature,humidity,zone,status) values
(4,'s104',26.5,58.0,'zone1','on'),
(5,'s105',29.3,54.0,'zone2','off');

insert into sensor_data (id,device_id) values
(6,'s106'),
(7,'s107');

insert into sensor_data values
(8,'s108',24.0,62.0,'zone3','on'),
(9,'s109',27.5,57.0,'zone1','off'),
(10,'s110',23.0,64.5,'zone2','on'),
(11,'s111',26.7,59.0,'zone3','off'),
(12,'s112',25.5,61.0,'zone1','on'),
(13,'s113',28.2,56.5,'zone2','off'),
(14,'s114',27.0,58.5,'zone3','on'),
(15,'s115',22.6,63.0,'zone1','off');

update sensor_data set humidity=70.0 where id=1;
update sensor_data set zone='zonex' where id=2;
update sensor_data set device_id='s999' where id=3;
update sensor_data set status='idle' where id=4;
update sensor_data set temperature=30.0 where id=5;

alter table sensor_data drop status;

select * from sensor_data;