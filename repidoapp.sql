create database rapido_app;
use rapido_app;

create table riders (rider_id int primary key,rider_name varchar(50) not null,phone varchar(15),city varchar(50));
desc riders;
insert into riders values(1,'Ravi','9000000001','Bangalore'),
(2,'Anu','9000000002','Mysore'),
(3,'Kiran','9000000003','Hubli'),
(4,'Sneha','9000000004','Mangalore'),
(5,'Arjun','9000000005','Bangalore'),
(6,'Meena','9000000006','Mysore'),
(7,'Rahul','9000000007','Hubli'),
(8,'Pooja','9000000008','Bangalore'),
(9,'Vikram','9000000009','Mangalore'),
(10,'Divya','9000000010','Mysore'),
(11,'Manoj','9000000011','Hubli'),
(12,'Kavya','9000000012','Bangalore'),
(13,'Deepak','9000000013','Mysore'),
(14,'Nisha','9000000014','Hubli'),
(15,'Suresh','9000000015','Bangalore');

select * from riders;
create table bookings (booking_id int primary key,rider_id int,pickup_location varchar(100),drop_location varchar(100),fare decimal(10,2),
    booking_date date,foreign key (rider_id) references riders(rider_id));

desc bookings;

insert into bookings values
(301,1,'BTM','Marathahalli',120.00,'2024-03-01'),
(302,2,'Bus Stand','Railway Station',80.00,'2024-03-02'),
(303,3,'Market','College',60.00,'2024-03-03'),
(304,4,'City Center','Beach',100.00,'2024-03-04'),
(305,5,'Silk Board','Electronic City',150.00,'2024-03-05');

select * from bookings;