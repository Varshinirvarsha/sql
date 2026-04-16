create database digital_wallet;
 use digital_wallet; 
 
 create table digital_wallet (id int primary key, wallet_id varchar(20),
 balance decimal(10,2), rating float, transactions double, type char(1), user_name varchar(50), mode enum('upi','card'), 
 features set('cashback','offers'), created_date date, created_year year, is_active boolean); 
 
 insert into digital_wallet values
 (1,'w101',5000.50,4.5,50,'p','ravi','upi','cashback','2023-01-01',2023,1),
 (2,'w102',3000.00,4.0,30,'c','asha','card','offers','2023-02-02',2023,1),
(3,'w103',4500.75,4.2,40,'p','kiran','upi','cashback,offers','2023-03-03',2023,0);

 select * from digital_wallet;