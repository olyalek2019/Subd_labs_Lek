 use my_publishing_housedb;

CREATE FUNCTION mycms_encode (pass char(50))
RETURNS TINYBLOB
RETURN AES_ENCRYPT(pass, 'abs');

CREATE FUNCTION mycms_decode (pass TINYBLOB)
RETURNS char(50)
RETURN aes_decrypt(pass, 'abs');

SELECT mycms_encode(password) 
FROM book2;
SELECT mycms_decode(password) 
FROM book2;

DELIMITER //
create procedure my_count (in name_a char(20), in date1 date, in date2 date)
	begin
		declare error char;
        set error ='Неприйнятні дані';
        if (date1<date2) then
			begin
			create table if not exists my_publishing_housedb.selected_orders (book_name char(20), amount INT UNSIGNED);
            truncate my_publishing_housedb.selected_orders;
            insert into my_publishing_housedb.selected_orders select book.Book_name as book_name, count(customer_order.Id_customer_order) as amount
            from (buyer inner join customer_order)inner join book 
            on buyer.Buyer_name = name_a
            and buyer.Id_buyer=customer_order.Id_buyer
            and customer_order.Id_book=book.Id_book
            where customer_order.Order_date between date1 and date2
			GROUP BY book_name;
			END;
			ELSE SELECT error;
			END IF;
			END//
			DELIMITER ;

call my_count ('Marta', '2020-09-28', '2020-10-31');
select * from selected_orders;