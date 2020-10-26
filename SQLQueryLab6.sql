use my_publishing_housedb;
select book1.Id_book, book1.Book_name, book1.Price, customer_order2.Order_date
	from book1, customer_order2
    where book1.Id_book=customer_order2.Id_book AND Price >200;

select book1.Id_book, book1.Book_name, book1.Price, customer_order2.Order_date
	from book1, customer_order2
    where book1.Id_book=customer_order2.Id_book;

select *
	from customer_order2
	where Order_date>'2020-04-26';

create view customer_order2 as select distinct Id_book, Order_date
	from customer_order;