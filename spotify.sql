create database spotify_music;
use spotify_music;
create table artists (artist_id int primary key,artist_name varchar(50) not null,country varchar(50),genre varchar(50));
desc artists;

insert into artists values (1,'Arijit Singh','India','Bollywood'),
(2,'Anirudh','India','Tamil'),
(3,'Taylor Swift','USA','Pop'),
(4,'Ed Sheeran','UK','Pop'),
(5,'Sid Sriram','India','Melody'),
(6,'Shreya Ghoshal','India','Classical'),
(7,'Neha Kakkar','India','Pop'),
(8,'Armaan Malik','India','Bollywood'),
(9,'Billie Eilish','USA','Pop'),
(10,'Drake','Canada','Hip Hop'),
(11,'Badshah','India','Rap'),
(12,'Yo Yo Honey Singh','India','Rap'),
(13,'Atif Aslam','Pakistan','Pop'),
(14,'Justin Bieber','Canada','Pop'),
(15,'Adele','UK','Soul');
select * from artists;
create table songs (song_id int primary key,artist_id int,song_name varchar(100) not null,duration int,
    release_date date,foreign key (artist_id) references artists(artist_id));
    
desc songs;

insert into songs values
(101,1,'Tum Hi Ho',4,'2024-01-01'),
(102,2,'Arabic Kuthu',3,'2024-01-05'),
(103,3,'Love Story',5,'2024-01-10'),
(104,4,'Perfect',4,'2024-01-15'),
(105,5,'Adiye',4,'2024-01-20');
select *from songs;