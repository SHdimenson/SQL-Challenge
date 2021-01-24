-- Verifying the import/data-load into tables.
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM titles;

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
-- ***ORDER BY not required but used it for an organized display of data
SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees e
LEFT JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY s.emp_no
;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986
;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, dept_name, dm.emp_no, last_name, first_name
FROM dept_manager dm
LEFT JOIN departments d ON dm.dept_no = d.dept_no
LEFT JOIN employees e ON dm.emp_no = e.emp_no
;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
--***ORDER BY not required but used it for an organized display of data
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no
ORDER BY de.emp_no
;


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."



-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.



-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

