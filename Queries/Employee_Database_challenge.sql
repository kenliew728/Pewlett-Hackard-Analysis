-- Deliverable 1: Creating the number of retiring employees by title (ret_ti)
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO ret_title
FROM employees AS e
LEFT JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT COUNT (*) FROM ret_title

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title	
INTO unique_titles
FROM ret_title AS rt
ORDER BY rt.emp_no ASC,rt.to_date DESC;

-- Retrieving number of employees by most recent job title 
-- who are about to retire (retiring_titles)
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY ut.count DESC;


-- Deliverable #2: The Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND ti.to_date = ('9999-01-01')
ORDER BY e.emp_no;


-- Deliverable #3: Determine total count on employees elible to retire and mentorship program 

-- Getting count of unique titles
SELECT COUNT (*) FROM unique_titles;

-- Getting total employees eligible for mentorship
SELECT COUNT (*) FROM mentorship_eligibility

-- Total count of mentorship by title
SELECT COUNT(me.title), me.title
INTO mentorship_titles
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY me.count DESC;
