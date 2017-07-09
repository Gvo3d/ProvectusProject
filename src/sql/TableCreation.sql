DROP DATABASE IF EXISTS `provectus`;
CREATE DATABASE `provectus` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE `provectus`;

DROP TABLE IF EXISTS `Authors`;
CREATE TABLE Authors (
    Author_id INT NOT NULL AUTO_INCREMENT,
    First_name VARCHAR(40) NOT NULL,
    Last_name VARCHAR(40) NOT NULL,
    Year_of_birth TIMESTAMP NOT NULL,
    UNIQUE Last_name_u (Last_name),
    UNIQUE First_name_u (First_name),
    PRIMARY KEY (Author_id) );

DROP TABLE IF EXISTS `Roles`;
CREATE TABLE Roles (
    Role_id INT NOT NULL AUTO_INCREMENT,
    Role_name VARCHAR(20) NOT NULL,
    UNIQUE UNIQUE_ROLE_ID (Role_id),
    PRIMARY KEY (Role_id) );

DROP TABLE IF EXISTS `Users`;
CREATE TABLE Users (
    User_id INT NOT NULL AUTO_INCREMENT,
    Login VARCHAR(50) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Creation_date TIMESTAMP NOT NULL DEFAULT NOW(),
    Enabled BIT NOT NULL DEFAULT 1,
    User_role_id INT NOT NULL DEFAULT 1,
    UNIQUE Login_u (Login),
    FOREIGN KEY(User_role_id) REFERENCES Roles(Role_id) ON DELETE CASCADE,
    PRIMARY KEY (User_id) );

DROP TABLE IF EXISTS `publishing_house`;
CREATE TABLE publishing_house (
    publishing_house_id INT AUTO_INCREMENT,
    publishing_house_name VARCHAR(20) NOT NULL,
    UNIQUE publishing_house_id_u (publishing_house_id),
    PRIMARY KEY (publishing_house_id) );

DROP TABLE IF EXISTS `Books`;
CREATE TABLE `Books` (
    Books_id INT NOT NULL AUTO_INCREMENT,
    book_name VARCHAR(255),
    book_creation_date TIMESTAMP NOT NULL,
    book_publishing_house_id INT,
    book_comment TEXT,
    book_price BIGINT NOT NULL,
    UNIQUE Books_id_u (Books_id),
    PRIMARY KEY (Books_id),
    FOREIGN KEY(book_publishing_house_id) REFERENCES publishing_house(publishing_house_id) ON DELETE CASCADE );

    DROP TABLE IF EXISTS `Author_book_mag`;
CREATE TABLE Author_book_mag (
    Magazine_author_id INT NOT NULL,
    Magazine_book_id INT NOT NULL,
    PRIMARY KEY (Magazine_author_id, Magazine_book_id),
    KEY (Magazine_author_id),
    KEY (Magazine_book_id),
    CONSTRAINT FK_AUTHORMAG_1 FOREIGN KEY (Magazine_book_id) REFERENCES Books (Books_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_AUTHORMAG_2 FOREIGN KEY (Magazine_author_id) REFERENCES Authors (Author_id) ON DELETE CASCADE ON UPDATE CASCADE );

DROP TABLE IF EXISTS `Genres`;
CREATE TABLE Genres (
    Genre_id INT NOT NULL AUTO_INCREMENT,
    Genre_name VARCHAR(255) NOT NULL,
    UNIQUE Genre_id_u (Genre_id),
    UNIQUE Genre_name_u (Genre_name),
    PRIMARY KEY (Genre_id) );

DROP TABLE IF EXISTS `Genre_book_mag`;
CREATE TABLE Genre_book_mag (
    Magazine_book_id INT NOT NULL,
    Magazine_genre_id INT NOT NULL,
    PRIMARY KEY (Magazine_book_id, Magazine_genre_id),
    KEY (Magazine_book_id),
    KEY (Magazine_genre_id),
    CONSTRAINT FK_GENREMAG_1 FOREIGN KEY (Magazine_book_id) REFERENCES Books (Books_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_GENREMAG_2 FOREIGN KEY (Magazine_genre_id) REFERENCES Genres (Genre_id) ON DELETE CASCADE ON UPDATE CASCADE );

DROP TABLE IF EXISTS `Orders`;
CREATE TABLE Orders (
    Order_id BIGINT NOT NULL AUTO_INCREMENT,
    Order_user_id INT NOT NULL,
    Order_creation TIMESTAMP NOT NULL DEFAULT NOW(),
    Success_payment BIT NOT NULL DEFAULT 0,
    PRIMARY KEY (Order_id) );

DROP TABLE IF EXISTS `Order_book_mag`;
CREATE TABLE Order_book_mag (
    Order_mag_id BIGINT AUTO_INCREMENT,
    Order_id BIGINT NOT NULL,
    Book_id INT NOT NULL,
    PRIMARY KEY (Order_mag_id),
    KEY (Order_id),
    KEY (Book_id),
    CONSTRAINT FK_ORDERMAG_1 FOREIGN KEY (Book_id) REFERENCES Books (Books_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_ORDERMAG_2 FOREIGN KEY (Order_id) REFERENCES Orders (Order_id) ON DELETE CASCADE ON UPDATE CASCADE );