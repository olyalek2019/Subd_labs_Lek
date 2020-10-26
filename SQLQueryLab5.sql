use my_publishing_housedb;
select * from book1, book2;

select * from book2
	where Id_book not in (select Id_book from book1); 

select * from book1
	where Id_book in (select Id_book from book2);

select * from book1
	union select * from book2;

create table book2
	as select Id_book, Id_version, Id_pb_type, Book_name, Print_copies_num, Pubishing_year, Price from book
    where Pubishing_year>2015;
    
create table book1
	as select Id_book, Id_version, Id_pb_type, Book_name, Print_copies_num, Pubishing_year, Price from book
    where Print_copies_num>=1000000;