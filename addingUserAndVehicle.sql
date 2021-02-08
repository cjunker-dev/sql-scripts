INSERT into user
	(name, address, city, state, zipcode, email, phone)
    VALUES 
    ('Celina Junker', '1561 Oak Knoll Dr', 'Cincinnati', 'OH', '45224', 'example@email.com', '5135180986');
    
INSERT into vehicle (year, make, model, vin, submodel, ownerID)
value
	('2014', 'Kia', 'Soul', '3283928392', 'light blue', (SELECT ID from user where name = 'Celina Junker')),
    ('2013', 'Kia', 'Excalibur', '84737932', 'purple', NULL);
    
select v.*, u.name
    from vehicle v
    left join user u on v.ownerid = u.id;
    
update vehicle v set v.ownerid = 999 where v.id = 2;