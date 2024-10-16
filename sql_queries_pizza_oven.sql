DROP DATABASE PIZZAOVEN;
CREATE DATABASE PIZZAOVEN;
USE PIZZAOVEN;

CREATE TABLE `customers` (
    `cust_id` int  NOT NULL PRIMARY KEY,
    `cust_firstname` varchar(50)  NOT NULL ,
    `cust_lastname` varchar(50)  NOT NULL 
);

CREATE TABLE `address` (
    `add_id` int  NOT NULL PRIMARY KEY,
    `delivery_address` varchar(200)  NOT NULL ,
    `delivery_city` varchar(50)  NOT NULL ,
    `delivery_picode` varchar(10)  NOT NULL ,
    `contact_no` varchar(10)  NOT NULL 
);

CREATE TABLE `ingredient` (
    `ing_id` varchar(10)  NOT NULL PRIMARY KEY,
    `ing_name` varchar(200)  NOT NULL ,
    `ing_weight` int  NOT NULL ,
    `ing_measure` varchar(20)  NOT NULL ,
    `ing_price` decimal(10,2)  NOT NULL 
);

CREATE TABLE `recipe` (
    `recipe_id` varchar(20) PRIMARY KEY,
    `ing_id` varchar(20)  NOT NULL ,
    `quantity` int  NOT NULL,
    FOREIGN KEY (`ing_id`) REFERENCES ingredient (`ing_id`)
);

CREATE TABLE `item` (
    `item_id` int  NOT NULL PRIMARY KEY,
    `sku` varchar(20)  NOT NULL ,
    `item_name` varchar(50)  NOT NULL ,
    `item_category` varchar(50)  NOT NULL ,
    `item_size` varchar(20)  NOT NULL ,
    `item_price` decimal(10,2)  NOT NULL,
    FOREIGN KEY (`sku`) REFERENCES recipe (`recipe_id`)
);

CREATE TABLE `orders` (
    `index` int  NOT NULL PRIMARY KEY,
    `order_id` varchar(10)  NOT NULL ,
    `order_time` datetime  NOT NULL ,
    `item_id` int  NOT NULL ,
    `quantity` int  NOT NULL ,
    `cust_id` int  NOT NULL ,
    `delivery` boolean  NOT NULL ,
    `add_id` int  NOT NULL ,
    FOREIGN KEY (`cust_id`) REFERENCES customers (`cust_id`),
    FOREIGN KEY (`add_id`) REFERENCES address (`add_id`),
    FOREIGN KEY (`item_id`) REFERENCES item (`item_id`)
);

CREATE TABLE `inventory` (
    `inv_id` int  NOT NULL PRIMARY KEY,
    `item_id` varchar(10)  NOT NULL ,
    `quantity` int  NOT NULL,
    FOREIGN KEY (`item_id`) REFERENCES recipe (`ing_id`)
);

CREATE TABLE `staff` (
    `staff_id` varchar(20)  NOT NULL PRIMARY KEY,
    `first_name` varchar(50)  NOT NULL ,
    `last_name` varchar(50)  NOT NULL ,
    `position` varchar(100)  NOT NULL ,
    `hourly_rate` decimal(5,2)  NOT NULL
);

CREATE TABLE `shift` (
    `shift_id` varchar(20)  PRIMARY KEY,
    `day_of_week` varchar(10)  NOT NULL ,
    `start_time` time  NOT NULL ,
    `end_time` time  NOT NULL
);

CREATE TABLE `rotation` (
    `index` int  PRIMARY KEY,
    `rotation_id` varchar(20)  NOT NULL ,
    `date` datetime  NOT NULL ,
    `shift_id` varchar(20)  NOT NULL ,
    `staff_id` varchar(20)  NOT NULL,
    FOREIGN KEY (`shift_id`) REFERENCES shift (`shift_id`),
    FOREIGN KEY (`staff_id`) REFERENCES staff (`staff_id`)
);