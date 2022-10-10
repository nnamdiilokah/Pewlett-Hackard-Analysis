-- Creating Retirement Titles Table
SELECT em.emp_no, 
em.first_name, 
em.last_name, 
t.title, 
t.from_date,
t.to_date
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

-- Creating Mentorship Eligibiltiy Table
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date,
d.from_date, 
d.to_date,
t.title
-- INTO
FROM employees AS e
LEFT JOIN dept_emp AS d ON e.emp_no = d.emp_no
LEFT JOIN titles AS t ON e.emp_no = t.emp_no
WHERE d.to_date = '9999-01-01' AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;

-- Creating Mentorship Eligibiltiy Table
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date,
d.from_date, 
d.to_date,
t.title
INTO mentorship_eligibility
FROM employees AS e
LEFT JOIN dept_emp AS d ON e.emp_no = d.emp_no
LEFT JOIN titles AS t ON e.emp_no = t.emp_no
WHERE d.to_date = '9999-01-01' AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;