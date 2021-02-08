DROP procedure getAllUsers;

DELIMITER //

create procedure getAllUsers()
BEGIN
select id, username, firstname, lastname, phone, email, isReviewer, isAdmin
	from user;
END//
DELIMITER ;

call getAllUsers();