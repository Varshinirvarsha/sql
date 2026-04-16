create database stock_market;
 use stock_market;


 create table stock_market (id int primary key, stock_id varchar(20), price decimal(10,2), change_rate float, volume double, 
 sector char(1), company_name varchar(50), trade_type enum('buy','sell'), features set('dividend','bonus'), 
 remarks text, trade_date date, trade_time datetime, trade_year year, is_profit boolean);
 
 insert into stock_market values
 (1,'s101',500.50,2.5,10000,'i','tcs','buy','dividend','good','2023-01-01','2023-01-01 10:00:00',2023,1),
 (2,'s102',800.00,3.0,15000,'t','infosys','sell','bonus','average','2023-02-02','2023-02-02 11:00:00',2023,1),
 (3,'s103',650.75,1.8,12000,'i','wipro','buy','dividend,bonus','ok','2023-03-03','2023-03-03 09:30:00',2023,0);
 
 select * from stock_market;