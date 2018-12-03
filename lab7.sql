CREATE DATABASE lab6; --1
CREATE TABLE locations(
location_id SERIAL PRIMARY KEY,
street_address VARCHAR(25),
postal_code VARCHAR(12),
city VARCHAR(30),
state_province VARCHAR(12)
);
CREATE TABLE departments(
department_id SERIAL PRIMARY KEY,
department_name VARCHAR(50) UNIQUE,
budget INTEGER,
location_id INTEGER REFERENCES locations
);
CREATE TABLE employees(
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50),
phone_number VARCHAR(20),
salary INTEGER,
department_id INTEGER REFERENCES departments
) --2
SELECT first_name, last_name, d.department_id, department_name FROM departments AS d INNER JOIN employees AS e ON d.department_id= e.department_id; --3
SELECT first_name, last_name, d.department_id, d.department_name, FROM departments AS d INNER JOIN employees AS e ON d.department_id= e.department_id IN (80,40); --4
SELECT first_name, last_name, d.location_id, state_province FROM departments AS d INNER JOIN employees e ON d.department_id=e.department_id INNER JOIN locations l ON d.location_id = l.location_id; --5
SELECT first_name, last_name, d.department_id, d.department_name FROM employees AS e RIGHT JOIN departments AS d ON e.department_id= d.department_id; --6
SELECT first_name, last_name, d.department_id, d.department_name FROM employees AS e LEFT JOIN departments AS d ON e.department_id= d.department_id; --7

