use my_publishing_housedb;
select author.A_name, author.A_surname, author.Email as pass
	from author
    where char_length(Email)<10 or Email like  '@';
    

select book.Id_book, book.Book_name
	from book
    where not exists (
		select * 
		from customer_order
        where customer_order.Id_book=book.Id_book);

select book.Book_name, book.Price, book.Pubishing_year, customer_order.Order_date
	from book inner join customer_order
	on customer_order.Id_book=book.Id_book
	where book.Id_book in (
		select customer_order.Id_customer_order 
        from customer_order
		where customer_order.Order_date='2020-09-28')
        order by book.Book_name;


select customer_order.Id_customer_order, book.Book_name, publishing_type.Name_pb_type
	from(customer_order inner join book) inner join publishing_type
    on customer_order.Id_book=book.Id_book
    and book.Id_pb_type=publishing_type.Id_pb_type
    where book.Book_name in ('Mistress of evil', 'Mindful thoughts');

select customer_order.Id_customer_order, book.Book_name, customer_order.Order_date
	from customer_order inner join book on book.Id_book=customer_order.Id_book
    where book.Price<180;


select book.Id_book, book.Book_name, book.Price, publishing_type.Name_pb_type
	from book left join publishing_type on
    book.Id_pb_type=publishing_type.Id_pb_type;

select cast(aes_decrypt(aes_encrypt(Email, 'abc'), 'abc')as char) 
	from author where Id_author=3;