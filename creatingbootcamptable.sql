use bootcamp;
create table user (
	id int not null primary key auto_increment,
    name varchar(50) not null,
    address varchar(50) not null,
    city varchar(35) not null,
    state char(2) not null,
    zipcode varchar(5) not null,
    email varchar(254),
    phone varchar(20),
    role varchar(50)
);
create table vehicle (
	id int not null primary key auto_increment,
    year varchar(4) not null,
    model varchar(25) not null,
    make varchar(20) not null,
    VIN varchar(17) not null,
    submodel varchar(25),
    ownerid int,
    foreign key (ownerid) references user(id)
    
);