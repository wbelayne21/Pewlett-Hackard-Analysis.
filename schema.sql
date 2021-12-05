CREATE TABLE titles (
	emp_no int not null,
	title varchar(40) not null,
	from_date date not null,
	to_date date not null,
	Primary key (emp_no,title,from_date),
foreign key(emp_no) references employees(emp_no)
);

CREATE TABLE dept_emp (
	dept_no varchar(4) not null,
	emp_no int not null,
	from_date date not null,
	to_date date not null,
	Primary key (emp_no,dept_no),
foreign key(dept_no) references departments(dept_no),
foreign key(emp_no) references employees(emp_no)
);

CREATE TABLE dept_manager (
	dept_no varchar(4) not null,
	emp_no int not null,
	from_date date not null,
	to_date date not null,
	Primary key (emp_no,dept_no),
foreign key(dept_no) references departments(dept_no),
foreign key(emp_no) references employees(emp_no)
);

CREATE TABLE salaries (
	emp_no int not null,
	salary int not null,
	from_date date not null,
	to_date date not null,
	foreign key(emp_no) references Employees(emp_no),
	Primary key (emp_no)
);

create table employees (
	emp_no int not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	gender varchar not null,
	hire_date date not null,
	Primary key (emp_no)
);

CREATE TABLE departments (
	dept_no varchar(4) not null,
	dept_name varchar(40) not null,
	primary key (dept_no),
	Unique (dept_name)
);


