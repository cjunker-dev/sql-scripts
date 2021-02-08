create database useItUp;
use useItUp;
create table user (
	id int not null primary key auto_increment,
    username varchar(50) not null,
    password varchar(50) not null, 
    email varchar(255)
    );
    
create table project (
	id int not null primary key auto_increment,
    ownerID int,
    start date not null, 
    finish date,
    description varchar(255),
    
    foreign key (ownerid) references user(id)
)