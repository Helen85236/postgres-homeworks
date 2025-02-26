-- SQL-команды для создания таблиц


CREATE TABLE customers
(
	customer_id varchar(100) PRIMARY KEY,
	company_name varchar(300),
	contact_name varchar(300)
);

CREATE TABLE employees
(
	employee_id int PRIMARY KEY,
	first_name varchar(100),
	last_name varchar(100),
	title varchar(250),
	birth_date date,
	notes text
);

CREATE TABLE orders
(
	order_id int PRIMARY KEY,
	customer_id varchar(100) REFERENCES customers(customer_id),
	employee_id int REFERENCES employees(employee_id),
	order_date date,
	ship_city varchar(100)
);