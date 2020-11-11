use my_publishing_housedb;
create 
 trigger pb_type_delete before delete
	on publishing_type for each row 
    update book set Id_pb_type=3 where Id_pb_type = OLD.Id_pb_type;

delete from publishing_type where Id_pb_type = 3;
select* from book;
alter table buyer
add column lastbuy date default null;

create trigger price_code before insert 
on book1 for each row 
set new.Price = aes_encrypt(new.Price, 'key-key', @iv);

insert into book1 values (13, 1, 2, 'The sun', 243000, 2017, '540');
select * from book1;

create trigger buyer_lastbuy after insert 
on customer_order for each row
update buyer set buyer.lastbuy=Date(lastbuy.start)
where buyer.Id_buyer=new.Id_buyer;

insert into buyer values (6, 'Carl', 'Donald', 998076466, 2489867, 'Sumy', 'Kinska', '90', 'Sumy', '80978', 'carlDonald@yahoo.com.ua', '2020-05-09 00:01:01');
select * from buyer;
