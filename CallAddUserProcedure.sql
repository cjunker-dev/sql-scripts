 drop procedure AddUser;

Delimiter //

create procedure addUser(IN uname varchar(30),
	IN pword varchar(30), in fname varchar(30),
    in lname varchar(30))
    
begin 
	insert into user (username, password, firstname, lastname, isReviewer, isAdmin)
    values (uname, pword, fname, lname, false, false);
    
end//

delimiter ; 
Call AddUser('rv', 'rv', 'System', 'Reviewer');