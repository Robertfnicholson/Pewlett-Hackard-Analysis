# Employee Database Challenge
## Overview of Project
Pewlett Hackard is a large company with several thousand employees. It is looking toward the future in two ways. First, it is offering retirement packages to 
employees who meet certain criteria and starting to think about which positions will need to be filled soon. The number of retirements in the near term is 
expected to leave thousands of job openings. I worked with Bobby, an HR analyst, to perform employee research in order to provide the organization required 
information to prepare for the large number of retirements. Our research sought to answer the following questions: who will be retiring in the next few years 
and how many positions will the company need to fill? This analysis will help the company prepare by generating a list of all employees eligible for the 
retirement package. The employee data that we needed was only available in the form of six CSV files because the company has been mainly using Excel and VBA 
to work with their data. But now the company finally decided to update its methods and instead use SQL. My task was to help Bobby build an employee database 
with SQL by applying data modeling, engineering and analysis skills.</p>

## Project Steps
I used PostgreSQL, a relational database system, and pgAdmin to develop an employee database with SQL. In the first step, I reviewed the data and identified 
data relationships among the six CSV files. From there I prepared am entity relationship diagram (ERD), a type of flowchart that highlights different data 
tables and their relationship to each other (see below). I used the website QuickDBD to prepare the ERD.

	![employeeDB.png]( https://github.com/Robertfnicholson/Pewlett-Hackard-Analysis/blob/916baf9b6003d229e7cf1b036158be4df1a3b62c/Analysis_Projects_Folder/Pewlett-Hackard-Analysis_Folder/EmployeeDB.png)
    
Using the ERD, I used PostgreSQL and pgAdmin to create a database and then tables. I then wrote and executed SQL code to join the tables, import the CSV files 
into the database, and then wrote queries to prepare the required reports. </p>

## Challenges
I experienced challenges in learning pgAdmin. This included opening and using an existing SQL file. I learned the restore function that allows this. I also 
struggled with writing the join table codes in SQL. I referenced SSHEGGRUD’s “Employee_Database_Challenge.sql” file to correct an error in which I needed to 
add a second left join in the query for the second deliverable to create a mentorship eligibility table and related report. Finally, I learned that 
developing queries for a database is an iterative process whereby it may take multiple attempts to get the specific data needed.</p>

## Results: 
I developed a series of tables and related csv files using SQL scripts. The scripts can be found in the “Employee_Database_Challenge.sql” file. The below image 
provides a sample of the code.
![pgAdmin_SQL_code_employeeDB_queries.png]( https://github.com/Robertfnicholson/Pewlett-Hackard-Analysis/blob/3db717bcb1026901e52854cd93eb42c837e07202/Analysis_Projects_Folder/Pewlett-Hackard-Analysis_Folder/pgAdmin_SQL_code_employeeDB_queries.png)

*	Current_emp table and csv file provide data that modified the retirement_info table that not only meet the criteria for retirement eligibility, i.e. born 
between 1952 and 1955 and hired between 1985 and 1988, but also restricts to just current employees.  I also added the employee number and the to_date that 
confirms each as an active employee. This query produced a list of 33,118 current employees that meet the criteria for retirement eligibility. This reduced the 
count of employees that meet the retirement eligibility from the initial count of 41,380 in the retirement_info table down to 33,118.
	![Current_emp.png]( https://github.com/Robertfnicholson/Pewlett-Hackard-Analysis/blob/0ecdac2c9dfc0e2a4da24d6f554cf4298daa527f/Analysis_Projects_Folder/Pewlett-Hackard-Analysis_Folder/Current_emp.png)

*	Retirement_titles table and csv file provide data of those employees who meet the two criteria for retirement eligibility, and lists each employee’s 
	respective titles, both current and prior titles in the company. The list does contain both current and non-current employees.
	
*	Unique_titles table and csv provide data that modified the retirement_titles query to restrict to only current employees and provide their current titles.  
	![Unique_titles.png]( https://github.com/Robertfnicholson/Pewlett-Hackard-Analysis/blob/0ecdac2c9dfc0e2a4da24d6f554cf4298daa527f/Analysis_Projects_Folder/Pewlett-Hackard-Analysis_Folder/Unique_titles.png)

*	Retiring_titles table and csv provide summary data of the count of current employees who are retirement eligible, grouped by title. See image below.
	![Retiring_titles.png]( https://github.com/Robertfnicholson/Pewlett-Hackard-Analysis/blob/0ecdac2c9dfc0e2a4da24d6f554cf4298daa527f/Analysis_Projects_Folder/Pewlett-Hackard-Analysis_Folder/Retiring_titles.png)

*	Mentorship_eligibility table and csv provide data of current employees who are eligible for the mentorship program, i.e. the employee was born in 1965. 
	This provides a list of 1,549 mentorship eligible current employees. </p>

## Summary
Here is a summary of my findings and recommendations to assist the company in preparing for this large scale of employee retirements:

*	Based on the current-emp table, 33,118 current employees are retirement eligible and likely need to be filled. 

*	The mentorship eligible employees were limited to only 1,549 employees, despite a much larger group of likely qualified, retirement-ready employees in the 
	departments to mentor the next generation of Pewlett Hackard employees.
*	The employee_countby_dept query suggests that there are only a total of 36,619 total current employees, so retirement eligible employees represent the vast 
	majority, 90% of the total employees.
*	Another helpful query to construct as a follow are the number of managers that are retirement eligible. </p>

