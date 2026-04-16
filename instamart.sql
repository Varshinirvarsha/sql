create database instamart;
use instamart;

create table instamart_user (
    instamart_id CHAR(4) PRIMARY KEY,
    userName VARCHAR(20) NOT NULL UNIQUE,
    password VARCHAR(20) CHECK (LENGTH(password) > 8),
    email VARCHAR(30) CHECK (email LIKE '%@gmail.com'),
    phone_number BIGINT UNIQUE,
    dob DATE NOT NULL CHECK (dob BETWEEN '2000-01-01' AND '2015-12-31'),
    age INT CHECK (age > 10),
    country VARCHAR(10) DEFAULT 'India'
);