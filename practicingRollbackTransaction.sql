use prsdb;
start transaction;
update lineItem set quantity =(quantity + 1) where id > 0;
commit; -- rollback
select * from lineItem;