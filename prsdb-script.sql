-- use sys;
drop database if exists prsdb;
create database prsdb;
use prsdb;

create table user (
	id int not null unique primary key auto_increment,
    username varchar(30) not null,
    password varchar(30) not null,
    firstname varchar(30) not null,
    lastname varchar(30) not null, 
    phone varchar(12) unique,
    email varchar(255) unique,
    isReviewer tinyint not null default 0,
    isAdmin tinyint not null default 0,
    CONSTRAINT uname unique (UserName)
);

insert into user (username, password, firstname, lastname,  isReviewer, isAdmin)
	values
	('sa', 'sa', 'System', 'Admin', 1, 1);
    
create table vendor (
	id int not null unique primary key auto_increment,
    code varchar(10) not null unique,
    name varchar(30) not null,
    address varchar(30) not null,
    city varchar(30) not null,
    state varchar(2) not null,
    zip varchar(5) not null,
    phone varchar(12) null,
    email varchar(255) null
);

insert into vendor (code, name, address, city, state, zip, phoneNumber)
	values ('AMAZ', 'Amazon', '1 Amazon Way', 'Seattle', 'WA', '87444', null),
			('TARG', 'Target', '1 Target Way', 'Minneapolis', 'MN', '23453', null),
            ('MEIJ', 'Meijer', '1 Meijer Way', 'Atlanta', 'MI', '84532', null);
            
create table request (
	id int not null unique primary key auto_increment,
    description varchar(80) not null,
	justification varchar(80) not null,
	dateNeeded date not null,
    deliveryMode varchar(20) not null default 'Pickup',
    status varchar(10) not null default 'NEW',
    total decimal(11,2) not null default 0,
    submittedDate datetime not null default current_timestamp,
	rejectionReason varchar(80),
    userId int not null, 
		foreign key (userId) references user(id)
	
);

insert into request (description, justification, dateNeeded, userId)
	values ('1st request', 'just because', '2021-03-01',
			(select id from user where username = 'sa')),
			('2nd request', 'because i said so', '2021-04-03',
			(select id from user where username = 'sa') );
            
create table product (
	id int not null unique primary key auto_increment,
    partNumber varchar(30) not null unique,
    name varchar(30) not null,
	price decimal(11,2) not null,
	unit varchar(30) not null,
    photoPath varchar(255) null,
    vendorId int not null,
		foreign key (vendorId) references vendor(id),
	CONSTRAINT vendor_part unique (vendorId, partNumber)
);

insert into product (partNumber, name, price, unit, vendorID)
	values ('QAZ123', 'iPad Mini', 1296.12, 'Each', 
		(select id from vendor where name = 'Target')),
        ('CDE456', 'iPad Pro', 570.99, 'Each', 
        (select id from vendor where name = 'Meijer'));
        
create table lineItem (
	id int not null unique primary key auto_increment,
    requestId int not null,
		foreign key (requestId) references request(id),
	productId int not null,
		foreign key (productID) references product(id),
	quantity int not null default 1,
	constraint requestId_productId unique (requestId, productId)
);

insert into lineItem (requestId, productId, quantity)
	values ( (select id from request where id = 1), (select id from product where partNumber = 'QAZ123'), 3),
			( (select id from request where id = 1), (select id from product where partNumber = 'CDE456'), 2);