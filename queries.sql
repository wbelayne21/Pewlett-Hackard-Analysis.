
CREATE TABLE dept_emp (
	emp_no int not null,
	dept_no varchar(4) not null,
	from_date date not null,
	to_date date not null,
	Primary key (emp_no,dept_no),
foreign key(dept_no) references departments(dept_no),
foreign key(emp_no) references employees(emp_no)
);

select * from employees;

--retirement eligibility 
select first_name, last_name
from employees
where birth_date between '1952-01-01' AND '1955-12-31';

--born in '53'
select first_name, last_name
from employees
where birth_date between '1953-01-01' AND '1953-12-31';

--born in '54'
select first_name, last_name
from employees
where birth_date between '1954-01-01' AND '1954-12-31';

--born in '55'
select first_name, last_name
from employees
where birth_date between '1955-01-01' AND '1955-12-31';

select * from employees;

--narrow down the search by hire date
--hired (1985 and 1988)
select first_name, last_name
from employees
where birth_date between '1952-01-01' AND '1955-12-31' 
and (hire_date between '1985-01-01' and '1988-01-01');
--counting
select count(first_name)
from employees
where birth_date between '1952-01-01' AND '1955-12-31' 
and (hire_date between '1985-01-01' and '1988-12-31');

--new table for retirees
select first_name, last_name
into retirement_info
from employees
where birth_date between '1952-01-01' AND '1955-12-31' 
and (hire_date between '1985-01-01' and '1988-01-01');

select * from retirement_info;
