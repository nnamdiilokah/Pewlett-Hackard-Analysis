-- Creating Retirement Title Table

SELECT em.emp_no, em.first_name, em.last_name, t.title, t.from_date,t.to_date
INTO retirement_titles
FROM employees as em
LEFT JOIN titles as t
ON em.emp_no = t.emp_no
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
ORDER BY em.emp_no;