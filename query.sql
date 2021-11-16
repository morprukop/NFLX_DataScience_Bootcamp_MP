-- Select all the employees who were born between 
--January 1, 1952 and December 31, 1955
--and their titles and title date ranges
-- Order the results by emp_no

SELECT titles.title, titles.from_date, titles.to_date, employees.first_name,
employees.last_name
FROM titles INNER JOIN employess ON titles.emp_no = employees.emp_no
WHERE employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no

-- Select only the current title for each employee
SELECT titles.title, employees.first_name,
employees.last_name, MAX(titles.from_date) AS 'mostRecentDate'
FROM titles INNER JOIN employess ON titles.emp_no = employees.emp_no
WHERE employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no

-- Count the total number of employees about to retire by 
-- their current job title
SELECT COUNT(titles.title), titles.title from titles 
INNER JOIN employess ON titles.emp_no = employees.emp_no
WHERE employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31'

-- Count the total number of employees per department
SELECT COUNT(dept_emp.emp_no), dept titles.title from titles 
INNER JOIN employess ON titles.emp_no = employees.emp_no

SELECT departments.dept_name, COUNT(dept_emp.emp_no) FROM 
departments INNER JOIN dept_emp 
ON dept_emp.dept_no = departments.dept_no

