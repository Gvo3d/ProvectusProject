USE `provectus`;

insert into ROLES (ROLE_NAME) values ('USER');
insert into ROLES (ROLE_NAME) values ('RECEPTION');

insert into Authors (First_name, Last_name, Year_of_birth) values ('Author_name1', 'Author_surname1', '2012-12-31 11:30:45');
insert into Authors (First_name, Last_name, Year_of_birth) values ('Author_name2', 'Author_surname2', '2011-12-31 11:30:45');
insert into Authors (First_name, Last_name, Year_of_birth) values ('Author_name3', 'Author_surname3', '2010-12-31 11:30:45');
insert into Authors (First_name, Last_name, Year_of_birth) values ('Author_name4', 'Author_surname4', '2009-12-31 11:30:45');
insert into Authors (First_name, Last_name, Year_of_birth) values ('Author_name5', 'Author_surname5', '2008-12-31 11:30:45');
insert into Authors (First_name, Last_name, Year_of_birth) values ('Author_name6', 'Author_surname6', '2007-12-31 11:30:45');
insert into Authors (First_name, Last_name, Year_of_birth) values ('Author_name7', 'Author_surname7', '2006-12-31 11:30:45');

insert into USERS (Login, Password, User_role_id) values ('denis.yakimov89@gmail.com', 'qwerty', 1);
insert into USERS (Login, Password, User_role_id) values ('asdjklj@gsdgsd.ru', 'qwerty', 1);
insert into USERS (Login, Password, User_role_id) values ('admin@mail.ru', 'qwerty', 2);
insert into USERS (Login, Password, User_role_id) values ('temp@gmail.com', 'qwerty', 2);
insert into USERS (Login, Password, User_role_id) values ('qwerty@mail.ru', 'qwerty', 1);
insert into USERS (Login, Password, User_role_id) values ('test@ukr.net.ua', 'qwerty', 1);

insert into publishing_house (publishing_house_name) values ('Moskva izd');
insert into publishing_house (publishing_house_name) values ('Kiev izd');
insert into publishing_house (publishing_house_name) values ('Odessa izd');

insert into Genres (Genre_name) values ('action');
insert into Genres (Genre_name) values ('drama');
insert into Genres (Genre_name) values ('tragedy');
insert into Genres (Genre_name) values ('comedy');
insert into Genres (Genre_name) values ('scifi');

insert into Books (book_name, book_creation_date, book_publishing_house_id, book_price, book_comment) values ('Generation P', '2010-12-29 11:30:45', 1, 1200, 'BestBookEver1');
insert into Books (book_name, book_creation_date, book_publishing_house_id, book_price, book_comment) values ('Book A', '2009-11-11 11:30:45', 2, 1500, 'BestBookEver2');
insert into Books (book_name, book_creation_date, book_publishing_house_id, book_price, book_comment) values ('Book Author 3', '2003-10-10 11:30:45', 3, 1800, 'BestBookEver3');
insert into Books (book_name, book_creation_date, book_publishing_house_id, book_price, book_comment) values ('Cherep na rukave', '2002-09-05 11:30:45', 1, 1750, 'BestBookEver4');
insert into Books (book_name, book_creation_date, book_publishing_house_id, book_price, book_comment) values ('50 shades of gary', '2004-08-21 11:30:45', 2, 1620, 'BestBookEver5');
insert into Books (book_name, book_creation_date, book_publishing_house_id, book_price, book_comment) values ('whawhawha', '2005-07-19 11:30:45', 3, 2200, 'BestBookEver6');
insert into Books (book_name, book_creation_date, book_publishing_house_id, book_price, book_comment) values ('Zhizn nasekomih', '2006-06-02 11:30:45', 1, 1000, 'BestBookEver7');
insert into Books (book_name, book_creation_date, book_publishing_house_id, book_price, book_comment) values ('Book B', '2005-12-17 11:30:45', 2, 800, 'BestBookEver8');
insert into Books (book_name, book_creation_date, book_publishing_house_id, book_price, book_comment) values ('Chapaev i pustota', '2006-10-29 11:30:45', 3, 1100, 'BestBookEver9');
insert into Books (book_name, book_creation_date, book_publishing_house_id, book_price, book_comment) values ('Book Author 3 B', '2008-01-30 11:30:45', 1, 1330, 'BestBookEver10');

insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('1', '1');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('1', '2');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('2', '3');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('1', '4');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('3', '5');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('3', '6');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('3', '7');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('1', '3');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('4', '5');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('5', '6');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('6', '7');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('6', '2');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('7', '3');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('7', '5');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('8', '6');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('9', '2');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('9', '3');
insert into Author_book_mag (Magazine_book_id, Magazine_author_id) values ('10', '7');


insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('1', '1');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('1', '2');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('1', '3');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('2', '4');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('2', '5');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('3', '1');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('4', '3');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('4', '4');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('4', '5');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('5', '3');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('6', '2');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('6', '5');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('7', '2');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('7', '4');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('7', '5');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('7', '3');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('8', '1');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('9', '2');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('10', '3');
insert into Genre_book_mag (Magazine_book_id, Magazine_genre_id) values ('10', '4');

insert into Orders (Order_user_id, Success_payment) values (1, 0);
insert into Orders (Order_user_id, Success_payment) values (1, 1);
insert into Orders (Order_user_id, Success_payment) values (1, 0);
insert into Orders (Order_user_id, Success_payment) values (2, 0);
insert into Orders (Order_user_id, Success_payment) values (2, 1);
insert into Orders (Order_user_id, Success_payment) values (5, 0);
insert into Orders (Order_user_id, Success_payment) values (6, 0);
insert into Orders (Order_user_id, Success_payment) values (6, 1);
insert into Orders (Order_user_id, Success_payment) values (6, 1);
insert into Orders (Order_user_id, Success_payment) values (6, 0);

insert into Order_book_mag (Order_id, Book_id) values (1, 1);
insert into Order_book_mag (Order_id, Book_id) values (1, 2);
insert into Order_book_mag (Order_id, Book_id) values (2, 3);
insert into Order_book_mag (Order_id, Book_id) values (2, 1);
insert into Order_book_mag (Order_id, Book_id) values (3, 4);
insert into Order_book_mag (Order_id, Book_id) values (4, 5);
insert into Order_book_mag (Order_id, Book_id) values (4, 1);
insert into Order_book_mag (Order_id, Book_id) values (4, 2);
insert into Order_book_mag (Order_id, Book_id) values (5, 1);
insert into Order_book_mag (Order_id, Book_id) values (6, 7);
insert into Order_book_mag (Order_id, Book_id) values (6, 9);
insert into Order_book_mag (Order_id, Book_id) values (7, 1);
insert into Order_book_mag (Order_id, Book_id) values (7, 1);
insert into Order_book_mag (Order_id, Book_id) values (7, 8);
insert into Order_book_mag (Order_id, Book_id) values (8, 9);
insert into Order_book_mag (Order_id, Book_id) values (9, 9);
insert into Order_book_mag (Order_id, Book_id) values (9, 10);
insert into Order_book_mag (Order_id, Book_id) values (10, 6);
