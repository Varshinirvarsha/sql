create database firebolt_watch;
use firebolt_watch;

create table watches (watch_id int primary key,model_name varchar(50) not null,
price decimal(10,2),battery_life int);
desc watches;

insert into watches values
(1,'ninja call',2999.00,7),
(2,'ring pro',3499.00,8),
(3,'beast',3999.00,10),
(4,'phoenix',2799.00,6),
(5,'talk 2',3199.00,7),
(6,'visionary',4999.00,12),
(7,'cyclone',2699.00,5),
(8,'quantum',4599.00,10),
(9,'hurricane',3899.00,9),
(10,'invincible',5499.00,14),
(11,'epic',2999.00,6),
(12,'supernova',4799.00,11),
(13,'orbit',3599.00,8),
(14,'astro',3299.00,7),
(15,'zen',2899.00,6);

select * from watches;

create table sales (sale_id int primary key,watch_id int,quantity int,sale_date date,
    foreign key (watch_id) references watches(watch_id));

desc sales;

insert into sales values
(201,1,2,'2024-02-01'),
(202,2,1,'2024-02-02'),
(203,3,3,'2024-02-03'),
(204,4,1,'2024-02-04'),
(205,5,2,'2024-02-05');

select * from sales;