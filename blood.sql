create database blood_bank;
 use blood_bank;
 
 create table blood_bank (id int primary key, donor_id varchar(20), quantity decimal(8,2),
 hemoglobin float, age double, group_type char(2), donor_name varchar(50), 
 donation enum('voluntary','replacement'), tests set('hiv','bp'), donate_date date, donate_year year, is_available boolean);
 
 insert into blood_bank values (1,'d101',1.5,13.5,25,'o+','ravi','voluntary','bp','2023-01-01',2023,1),
 (2,'d102',1.0,12.0,30,'a+','asha','replacement','hiv','2023-02-02',2023,1),
 (3,'d103',1.2,13.0,28,'b+','kiran','voluntary','hiv,bp','2023-03-03',2023,0);

 select * from blood_bank;