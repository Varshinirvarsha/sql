create database AadhaarAuthentication;
use AadhaarAuthentication;

create table  AadhaarAuthentication(id int primary key, aadhaar_number bigint, phone_number bigint, 
balance decimal(10,2), latitude float, longitude double, gender char(1), name varchar(100), auth_type enum('otp','biometric'),
 services set('bank','sim','govt'), dob date, issue_year year, is_verified boolean);
 
 insert into AadhaarAuthentication  values
(1,123456789012,9876543210,25000.50,12.9716,77.5946,'f','asha','otp','bank,sim','2002-05-10',2022,1),

(2,123456789013,9876543211,18000.75,13.0827,80.2707,'m','ravi','biometric','govt','2001-08-15',2021,1),

(3,123456789014,9876543212,30000.00,15.2993,74.1240,'f','sneha','otp','bank,govt','2000-01-20',2020,0);

select*from AadhaarAuthentication;