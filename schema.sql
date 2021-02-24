CREATE TABLE IF NOT EXISTS departments
(
    dept_no CHARACTER(4) NOT NULL,
    dept_name VARCHAR(50),
    PRIMARY KEY(dept_no)
);
CREATE TABLE IF NOT EXISTS salaries
(
    emp_no INTEGER NOT NULL,
    salary INTEGER,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS dept_emp
(
    emp_no INTEGER NOT NULL,
    dept_no CHARACTER(4),
    PRIMARY KEY(emp_no, dept_no)
);
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (emp_no)
    REFERENCES salaries(emp_no)
    MATCH SIMPLE
;
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no)
    MATCH SIMPLE
;
CREATE TABLE IF NOT EXISTS titles
(
    title_id CHARACTER(5) NOT NULL,
    title VARCHAR(50),
    PRIMARY KEY(title_id)
);

CREATE TABLE IF NOT EXISTS employees
(
    emp_no INTEGER NOT NULL,
    emp_title CHARACTER(5),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHARACTER(1),
    hire_date DATE,
    PRIMARY KEY(emp_no)
);
ALTER TABLE employees
    ADD    FOREIGN KEY (emp_no)
    REFERENCES salaries(emp_no)
    MATCH SIMPLE
;
ALTER TABLE employees
    ADD    FOREIGN KEY (emp_title)
    REFERENCES titles(title_id)
    MATCH SIMPLE
;



-- Create Indexes
SELECT * FROM departments;
SELECT * FROM salaries;
SELECT * FROM titles;
SELECT * FROM dept_emp;
SELECT * FROM employees;
