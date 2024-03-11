CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE `cars` (
  `vehicle_id_number` integer PRIMARY KEY,
  `manufacturer` text,
  `model` text,
  `year` integer,
  `color` text
);

DROP TABLE cars;
CREATE TABLE `cars` (
  `vehicle_id_number` VARCHAR(70) PRIMARY KEY,
  `manufacturer` text,
  `model` text,
  `year` integer,
  `color` text
);

DROP TABLE cars;
CREATE TABLE `cars` (
`id` integer AUTO_INCREMENT PRIMARY KEY,
  `vehicle_id_number` VARCHAR(70),
  `manufacturer` text,
  `model` text,
  `year` integer,
  `color` text
);

DROP TABLE IF EXISTS customers;
CREATE TABLE `customers` (
  `customer_id` integer PRIMARY KEY,
  `name` text,
  `phone_number` integer(10),
  `email` integer,
  `address` text,
  `city` text,
  `state_province` text,
  `country` text,
  `zip_postal_code` integer(8)
);

DROP TABLE customers;

CREATE TABLE `customers` (
  `customer_id` integer PRIMARY KEY,
  `name` text,
  `phone_number` integer(15),
  `email` integer,
  `address` text,
  `city` text,
  `state_province` text,
  `country` text,
  `zip_postal_code` integer(15)
  );
  
  DROP TABLE customers;

CREATE TABLE `customers` (
  `customer_id` integer PRIMARY KEY,
  `name` text,
  `phone_number` VARCHAR(18),
  `email` VARCHAR(35),
  `address` VARCHAR(35),
  `city` text,
  `state_province` text,
  `country` text,
  `zip_postal_code` integer(15)
  );
  
  DROP TABLE customers;

CREATE TABLE `customers` (
`id` integer AUTO_INCREMENT PRIMARY KEY,
  `customer_id` integer,
  `name` text,
  `phone_number` VARCHAR(18),
  `email` VARCHAR(35),
  `address` VARCHAR(35),
  `city` text,
  `state_province` text,
  `country` text,
  `zip_postal_code` integer(15)
  );


DROP TABLE IF EXISTS salespersons;
CREATE TABLE `salespersons` (
  `staff_id` integer PRIMARY KEY,
  `name` text,
  `store` text
);

DROP TABLE salespersons;
CREATE TABLE `salespersons` (
`id` integer AUTO_INCREMENT PRIMARY KEY,
  `staff_id` integer,
  `name` text,
  `store` text
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE `invoices` (
  `invoice_number` integer PRIMARY KEY,
  `car` text,
  `customer` text,
  `staff` text,
  `date` date
);

DROP TABLE invoices;
CREATE TABLE `invoices` (
  `invoice_number` integer PRIMARY KEY,
  `date` date,
  `car` text,
  `customer` text,
  `staff` text
);

DROP TABLE invoices;
CREATE TABLE `invoices` (
  `invoice_number` integer PRIMARY KEY,
  `date` date,
  `car` integer,
  `customer` integer,
  `staff` integer
);

DROP TABLE invoices;
CREATE TABLE `invoices` (
  `invoice_number` integer PRIMARY KEY,
  `date` date,
  `car` VARCHAR (70),
  `customer` integer,
  `staff` integer
);

DROP TABLE invoices;
CREATE TABLE `invoices` (
  `invoice_number` integer PRIMARY KEY,
  `date` date,
  `car` VARCHAR (70),
  `customer` integer,
  `store` text
);

DROP TABLE invoices;
CREATE TABLE `invoices` (
  `invoice_number` integer PRIMARY KEY,
  `date` date,
  `car` VARCHAR (70),
  `customer` integer,
  `staff` integer (10)
);

DROP TABLE invoices;
CREATE TABLE `invoices` (
`id` integer AUTO_INCREMENT PRIMARY KEY,
  `invoice_number` integer,
  `date` date,
  `car` VARCHAR (70),
  `customer` integer,
  `staff` integer (10)
);

DELETE FROM `salespersons`
WHERE `id` > 8;

DELETE FROM `customers`
WHERE `id` > 3;

ALTER TABLE `salespersons` MODIFY `staff_id` text;

DROP TABLE salespersons;
CREATE TABLE `salespersons` (
`id` integer AUTO_INCREMENT PRIMARY KEY,
  `staff_id` integer,
  `name` text,
  `store` text
);

ALTER TABLE `invoices` ADD FOREIGN KEY (`id`) REFERENCES `cars` (`id`);

ALTER TABLE `invoices` ADD FOREIGN KEY (`id`) REFERENCES `customers` (`id`);

ALTER TABLE `invoices` ADD FOREIGN KEY (`id`) REFERENCES `salespersons` (`id`);
