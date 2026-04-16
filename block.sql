create database blockchain_transactions;
 use blockchain_transactions;
 
 create table block_data (id int, tx_id varchar(40), amount int);
 
 select * from block_data;
 
 alter table block_data add gas_fee float;
 alter table block_data add latency double;
 alter table block_data add network varchar(30); 
 
 
 alter table block_data drop amount;
 
 alter table block_data rename column tx_id to transaction_hash; 
 alter table block_data rename column network to chain;
 
 alter table block_data modify transaction_hash varchar(60); 
 alter table block_data modify gas_fee float;
 alter table block_data add status char(10); 
 
 insert into block_data values (1,'tx101',0.5,1.2,'eth','done'),
 (2,'tx102',0.8,1.5,'btc','pending'),
 (3,'tx103',0.6,1.8,'bnb','done'); 
 insert into block_data (id,transaction_hash,gas_fee,latency,chain,status)
 values (4,'tx104',0.7,1.3,'eth','done'),(5,'tx105',0.9,1.1,'btc','pending');
 insert into block_data (id,transaction_hash) values (6,'tx106'),(7,'tx107');
 insert into block_data values (8,'tx108',0.4,1.0,'bnb','done'),
 (9,'tx109',0.6,1.4,'eth','pending'),
 (10,'tx110',0.5,1.6,'btc','done'),
 (11,'tx111',0.7,1.2,'bnb','pending'),
 (12,'tx112',0.8,1.3,'eth','done'),
 (13,'tx113',0.9,1.7,'btc','pending'),
 (14,'tx114',0.6,1.1,'bnb','done'),
 (15,'tx115',0.5,1.5,'eth','pending');
 
 update block_data set latency=2.0 where id=1;
 update block_data set chain='solana' where id=2;
 update block_data set transaction_hash='tx999' where id=3;
 update block_data set status='verified' where id=4;
 update block_data set gas_fee=1.0 where id=5;
 
 alter table block_data drop status;
 select * from block_data;