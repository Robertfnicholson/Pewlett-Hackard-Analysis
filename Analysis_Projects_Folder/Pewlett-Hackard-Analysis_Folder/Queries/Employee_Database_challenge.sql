-- Deliverable 1
-- From query results, create a table "Retirement_titles"
SELECT e.emp_no, t.title, t.from_date, t.to_date
Into retirement_titles
FROM titles As t
Left Join employees as e 
On e.emp_no = t.emp_no
WHERE e.birth_date between '1952-01-01' AND '1955-12-31'
Order by e.emp_no;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.to_date,
rt.first_name, 
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;

-- View the results of the query
Select * From unique_titles;

-- Write a query to retrieve the number of employees by their most recent job title who are about to retire
Select count(ut.emp_no), ut.title
Into retiring_titles
From unique_titles as ut
Group By ut.title
Order By count(ut.title) desc;

-- View the results of the query
Select * From retiring_titles;

-- Deliverable 2
-- Write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table
-- Retrieve the from_date and to_date columns from the Department Employee table.
-- Retrieve the title column from the Titles table.
-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause
-- Create a new table using the INTO clause
-- Join the Employees and the Department Employee tables on the primary key.
-- Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the
-- employees whose birth dates are between January 1, 1965 and December 31, 1965.
-- Order the table by the employee number.
-- Used reference code from SSHEGGRUD "Employee_Database_challenge.sql" to add an additional left join.
Select Distinct On (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
Into mentorship_eligibility
From employees as e
LEFT JOIN dept_employees as de
On (e.emp_no = de.emp_no)
LEFT JOIN titles as t
On (e.emp_no = t.emp_no)
Where e.birth_date between '1965-01-01' And '1965-12-31'
And (de.to_date = '9999-01-01')
Order by e.emp_no Asc;

-- View results of query
Select * From mentorship_eligibility;