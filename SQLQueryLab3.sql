use my_publishing_housedb;
show tables;

describe author;


alter table book
	drop foreign key FKpublishing_type,
    drop index FKpublishing_type;
    
alter table book
	drop column Page_num,
    modify column Book_name char(22) null;
    
alter table author
	modify column Email char(25) Null;
    
alter table book
	modify Print_copies_num int unsigned not null,
    add column Id_version int unsigned not null after Id_book,
    add constraint unique uq_book_version (Id_book, Id_version);
    describe book;
    
alter table customer_order
	drop foreign key FKbuyer,
	add CONSTRAINT FKbuyer_new FOREIGN KEY (Id_buyer)
	REFERENCES Buyer (Id_buyer)ON DELETE CASCADE;