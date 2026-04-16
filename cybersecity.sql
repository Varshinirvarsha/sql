create database cybersecurity_logs;
use cybersecurity_logs;

create table log_data (id int,log_id varchar(40),severity int);

select * from log_data;

alter table log_data add threat_level float;
alter table log_data add response_time double;
alter table log_data add source_ip varchar(30);

alter table log_data drop severity;

alter table log_data rename column log_id to event_id;
alter table log_data rename column source_ip to ip_address;

alter table log_data modify event_id varchar(60);
alter table log_data modify threat_level float;

alter table log_data add status char(10);

insert into log_data values
(1,'l101',5.5,1.2,'192.168.1.1','open'),
(2,'l102',7.0,1.5,'192.168.1.2','closed'),
(3,'l103',6.2,1.8,'192.168.1.3','open');

insert into log_data (id,event_id,threat_level,response_time,ip_address,status) values
(4,'l104',6.5,1.3,'192.168.1.4','open'),
(5,'l105',8.3,1.1,'192.168.1.5','closed');

insert into log_data (id,event_id) values
(6,'l106'),
(7,'l107');

insert into log_data values
(8,'l108',4.0,1.0,'192.168.1.6','open'),
(9,'l109',5.5,1.4,'192.168.1.7','closed'),
(10,'l110',6.0,1.6,'192.168.1.8','open'),
(11,'l111',7.7,1.2,'192.168.1.9','closed'),
(12,'l112',5.5,1.3,'192.168.1.10','open'),
(13,'l113',6.2,1.7,'192.168.1.11','closed'),
(14,'l114',7.0,1.1,'192.168.1.12','open'),
(15,'l115',5.6,1.5,'192.168.1.13','closed');

update log_data set response_time=2.0 where id=1;
update log_data set ip_address='10.0.0.1' where id=2;
update log_data set event_id='l999' where id=3;
update log_data set status='resolved' where id=4;
update log_data set threat_level=9.9 where id=5;

alter table log_data drop status;

select * from log_data;