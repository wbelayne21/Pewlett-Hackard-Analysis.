
--joining employees and title 
select e.emp_no, e.first_name, e.last_name, e.birth_date, t.title, t.from_date, t.to_date
into retirement_titles
from employees as e
inner join titles as t
on e.emp_no = t.emp_no
where birth_date BETWEEN '1952-01-01' and '1955-12-31'
order by emp_no asc;
select * from retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
from retirement_titles
where birth_date BETWEEN '1952-01-01' and '1955-12-31'
ORDER BY emp_no asc, to_date DESC;

--future retiree title count 
select title, count(title)
into retiring_titles
from unique_titles
group by title order by count desc;

select * from retiring_titles;

--currently with PH retiring soon by title 
select title, count(title)
from current_title
group by title
order by count desc;

--All retiring titles count 
select count(title)
from unique_titles;

--currently with the company
select count(emp_no)
from current_emp;


--Deliverable 2

--join employees and dept_emp
select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
into mentorship_eligibilty
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join titles as t
on e.emp_no = t.emp_no
where (de.to_date = '9999-01-01') and (e.birth_date between '1965-01-01' and '1965-12-31')
order by emp_no;

select * from mentorship_eligibilty;



--number of eligible mentors
select count(first_name)
from mentorship_eligibilty;

--Total employees
select count(emp_no)
from employees;

--mentor eligibility titles

select title, count(title)
from mentorship_eligibilty
group by title
order by count desc;








