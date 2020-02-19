DROP DATABASE IF EXISTS orderscustomers;
CREATE DATABASE IF NOT EXISTS orderscustomers;
USE orderscustomers;

CREATE TABLE SALESMAN
(
    SALESMAN_ID int unsigned primary key,
    NAME        varchar(30),
    CITY        varchar(15),
    COMMISSION  decimal(5, 2)
);

CREATE TABLE CUSTOMER
(
    CUSTOMER_ID int unsigned primary key,
    CUST_NAME   varchar(30),
    CITY        varchar(15),
    GRADE       int,
    SALESMAN_ID int unsigned
);

CREATE TABLE ORDERS
(
    ORD_NO      int unsigned primary key,
    PURCH_AMT   DECIMAL(8, 2),
    ORD_DATE    DATE DEFAULT NOW(),
    CUSTOMER_ID int unsigned references CUSTOMER (CUSTOMER_ID),
    SALESMAN_ID int unsigned references SALESMAN (SALESMAN_ID)
);

INSERT INTO SALESMAN(salesman_id, name, city, commission)
VALUES (5001, 'James Hoog', 'New York', 0.15),
       (5002, 'Nail Knite', 'Paris', 0.13),
       (5005, 'Pit Alex', 'London', 0.11),
       (5006, 'Mc Lyon', 'Paris', 0.14),
       (5007, 'Paul Adam', 'Rome', 0.13),
       (5003, 'Lauson Hen', 'San Hose', 0.12);

INSERT INTO CUSTOMER(CUSTOMER_ID, CUST_NAME, CITY, GRADE, SALESMAN_ID)
VALUES (3002, 'Nick Rimando', 'New York', 100, 5001),
       (3007, 'Brad Davis', 'New York', 200, 5001),
       (3005, 'Graham Zusi', 'California', 200, 5002),
       (3008, 'Julian Green', 'London', 300, 5002),
       (3004, 'Fabian Johnson', 'Paris', 300, 5006),
       (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
       (3003, 'Jozy Altidor', 'Moscow', 200, 5007),
       (3001, 'Brad Guzan', 'London', NULL, 5005);

INSERT INTO ORDERS(ORD_NO, PURCH_AMT, ORD_DATE, CUSTOMER_ID, SALESMAN_ID)
VALUES (70009, 270.65, '2012-09-10', 3001, 5005),
       (70002, 65.26, '2012-10-05', 3002, 5001),
       (70004, 110.5, '2012-08-17', 3009, 5003),
       (70005, 2400.6, '2012-07-27', 3007, 5001),
       (70008, 5760, '2012-09-10', 3002, 5001),
       (70010, 1983.43, '2012-10-10', 3004, 5006),
       (70003, 2480.4, '2012-10-10', 3009, 5003),
       (70011, 75.29, '2012-08-17', 3003, 5007),
       (70013, 3045.6, '2012-04-25', 3002, 5001),
       (70001, 150.5, '2012-10-05', 3005, 5002),
       (70007, 948.5, '2012-09-10', 3005, 5002),
       (70012, 250.45, '2012-06-27', 3008, 5002);