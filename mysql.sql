CREATE TABLE STORE
( 
STORE_ID int PRIMARY KEY, 
ADDRESS VARCHAR(255),
CITY VARCHAR(255)
);

CREATE TABLE BOOK_INSTANCE
( 
COPY_INSTANCE int NOT NULL PRIMARY KEY, 
STORE_ID int unique key,  
ORDER_DETAIL_ID int unique key
);

CREATE TABLE BOOKS
( 
BOOK_TITLE VARCHAR(255), 
AUTHOR_ID int , 
PUBLISHER_ID int
);

CREATE TABLE PUBLISHER
( 
PUBLSIHER_ID int NOT NULL PRIMARY KEY,	
PUBLISHER_NAME VARCHAR(255), 
EMAIL_ADDRESS VARCHAR(255), 
WEBSITE VARCHAR(255)
);

CREATE TABLE AUTHOR
( 
AUTHOR_ID int NOT NULL primary key, 
FIRST_NAME VARCHAR(255), 
LAST_NAME VARCHAR(255), 
EMAIL_ADDRESS VARCHAR(255)
);	

CREATE TABLE ORDERS
( 
ORDER_ID int NOT NULL primary key, 
ORDER_DATE DATE,
ORDER_STATUS VARCHAR(255), 
CUSTOMER_ID int
);
CREATE TABLE ORDER_DETAILS
( 
ORDER_DETAIL_ID int NOT NULL PRIMARY KEY, 
ORDER_ID int, 
PRICE int, 
DISCOUNT int
);

CREATE TABLE CUSTOMERS
( 
CUSTOMER_ID int NOT NULL PRIMARY KEY, 
FIRST_NAME VARCHAR(255), 
LAST_NAME VARCHAR(255), 
ADDRESS VARCHAR(255), 
CITY VARCHAR(255), 
EMAIL VARCHAR(255)
);
