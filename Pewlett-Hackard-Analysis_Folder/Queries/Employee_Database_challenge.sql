-- -- From query results, create a table "Retirement_titles"
SELECT e.first_name, e.last_name, e.emp_no, t.title, t.from_date, t.to_date
-- Into retirement_titles
FROM titles As t
Left Join employees as e, 
On e.emp_no = t.emp_no;