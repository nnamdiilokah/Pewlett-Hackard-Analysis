-- Creating Retirement Titles Table
SELECT em.emp_no, em.first_name, em.last_name, t.title, t.from_date,t.to_date
INTO retirement_titles
FROM employees AS em
LEFT JOIN titles AS t
ON em.emp_no = t.emp_no
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
ORDER BY em.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows and create Unique Titles table
SELECT DISTINCT ON (ri.emp_no) ri.emp_no,
ri.first_name,
ri.last_name,
ri.title
INTO unique_titles
FROM retirement_titles AS ri
WHERE ri.to_date = '9999-01-01'
ORDER BY ri.emp_no ASC, ri.to_date DESC;

-- Creating Retiring Titles Table
SELECT count(un.title), un.title
INTO retiring_titles
FROM unique_titles AS un
GROUP BY un.title
ORDER BY count(un.title) DESC;
