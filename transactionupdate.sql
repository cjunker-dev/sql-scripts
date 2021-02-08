use prsdb;
-- transactions
start transaction;
update user set phone = '888' where id = 1;
commit;
select * from user;