use my_publishing_housedb;

select * from book1;

insert into publishing_type
	values (5, "Horrors"), (6, "Screemers");
start transaction;
	insert into book1 value (9, 1, 5, "The city of darkness", 1500000, 2016, 140);
    insert into book1 value (10, 1,6, "The lost city of Z", 250000, 2007, 320);
    insert into book1 value (11, 1,5, "The wizard", 480000, 2009, 80);
    insert into book1 value (12, 1,6, "Dark times", 2000000, 2015,115) ;
commit;

