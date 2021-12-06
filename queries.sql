
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
select emp_no, first_name, last_name
into retirement_info
from employees as e
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
And (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
select * from retirement_info;

--join dept and dept_namager
select d.dept_name, dm.emp_no,dm.from_date, dm.to_date
from departments as d
inner join dept_manager as dm
on d.dept_no= dm.dept_no;

--retirement_info x dept employee
select ri.emp_no, ri.first_name, ri.last_name, de.to_date
from retirement_info as ri
left join dept_emp as de
on ri.emp_no  = de.emp_no;

--new table 
select ri.emp_no, ri.first_name, ri.last_name, de.to_date
into current_emp
from retirement_info as ri
left join dept_emp as de
on ri.emp_no  = de.emp_no
where de.to_date = ('9999-01-01');

select * from current_emp;

--current emp x dept emp
select count(ce.emp_no), de.dept_no
into dept_emp_count --new table for count of num of employee in each depatment 
from current_emp as ce
left join dept_emp as de
on ce.emp_no = de.emp_no
group by de.dept_no
order by dept_no;

select * from dept_emp_count;

--employee info

drop table emp_info;
select e.emp_no, e.first_name, e.last_name, e.gender, s.salary, de.to_date
into emp_info
from employees as e
inner join salaries as s
on e.emp_no = s.emp_no
inner join dept_emp as de
on e.emp_no= de.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
     AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
	 and (de.to_date = '9999-01-01');
	 
select * from emp_info;

-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);
select * from manager_info;

--depatrment retirees
SELECT ce.emp_no,ce.first_name,ce.last_name,d.dept_name
into dept_info
from current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

select emp_no, first_name, last_name, dept_name
from employees as e 
inner join 
;