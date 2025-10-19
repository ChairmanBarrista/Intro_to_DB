-- alx_book_store.sql

-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- CREATE TABLE: AUTHORS
CREATE TABLE AUTHORS (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

-- CREATE TABLE: BOOKS
CREATE TABLE BOOKS (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES AUTHORS(author_id)
);

-- CREATE TABLE: CUSTOMERS
CREATE TABLE CUSTOMERS (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT
);

-- CREATE TABLE: ORDERS
CREATE TABLE ORDERS (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
);

-- CREATE TABLE: ORDER_DETAILS
CREATE TABLE ORDER_DETAILS (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
    FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);
