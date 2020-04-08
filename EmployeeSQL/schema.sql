DROP TABLE if exists employees
DROP TABLE if exists departments
DROP TABLE if exists dept_manager
DROP TABLE if exists dept_emp
DROP TABLE if exists salaries
DROP TABLE if exists titles


CREATE TABLE employees (
emp_no INTEGER NOT NULL,
birth_date VARCHAR (30) NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR (30) NOT NULL,
gender VARCHAR (1),
hire_date DATE,
PRIMARY KEY (emp_no)
);



CREATE TABLE departments (
dept_no VARCHAR (30) NOT NULL,
dept_name VARCHAR(30) NOT NULL,
PRIMARY KEY (dept_no));





CREATE TABLE dept_manager (
dept_no VARCHAR (30) NOT NULL,
emp_no INTEGER NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

ALTER TABLE "dept_manager" ADD id SERIAL PRIMARY KEY;



CREATE TABLE dept_emp (
emp_no INTEGER NOT NULL,
dept_no VARCHAR (30) NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)	
);

ALTER TABLE "dept_emp" ADD id SERIAL PRIMARY KEY;


CREATE TABLE salaries (
emp_no integer NOT NULL,
salary integer NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

ALTER TABLE "salaries" ADD id SERIAL PRIMARY KEY;


CREATE TABLE titles (
emp_no INTEGER NOT NULL,
title VARCHAR (30),
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

ALTER TABLE "titles" ADD id SERIAL PRIMARY KEY;

