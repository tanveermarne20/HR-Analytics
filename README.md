# Oracle_Sql_Project
# Database Schema Documentation 

## Tables

### 1. employees

**Description:** This table contains information about employees, including their employee ID, name, job title, manager ID, hire date, salary, and other relevant details.

**Columns:**
- employee_id (Primary Key)
- first_name
- last_name
- email
- phone_number
- hire_date
- job_id (Foreign Key referencing jobs.job_id)
- salary
- commission_pct
- manager_id (Foreign Key referencing employees.employee_id)
- department_id (Foreign Key referencing departments.department_id)

### 2. departments

**Description:** This table stores information about different departments within the organization.

**Columns:**
- department_id (Primary Key)
- department_name
- manager_id (Foreign Key referencing employees.employee_id)
- location_id (Foreign Key referencing locations.location_id)

### 3. countries

**Description:** A table containing information about countries.

**Columns:**
- country_id (Primary Key)
- country_name

### 4. jobs

**Description:** This table provides details about job titles and their associated job IDs.

**Columns:**
- job_id (Primary Key)
- job_title
- min_salary
- max_salary

### 5. locations

**Description:** Information about different locations or offices of a company.

**Columns:**
- location_id (Primary Key)
- street_address
- postal_code
- city
- state_province
- country_id (Foreign Key referencing countries.country_id)

### 6. job_history

**Description:** Contains historical information about employee job changes.

**Columns:**
- employee_id (Foreign Key referencing employees.employee_id)
- start_date (Composite Key)
- end_date
- job_id (Foreign Key referencing jobs.job_id)
- department_id (Foreign Key referencing departments.department_id)

### 7. regions

**Description:** Information about different geographical regions.

**Columns:**
- region_id (Primary Key)
- region_name

## Relationships

- The `employees` table has foreign key relationships with the `jobs`, `employees` (for manager), `departments`, and `locations` tables.
- The `departments` table has foreign key relationships with the `employees` and `locations` tables.
- The `locations` table has a foreign key relationship with the `countries` table.
- The `job_history` table has foreign key relationships with the `employees`, `jobs`, and `departments` tables.

## Usage

This database schema is designed to organize and manage information related to employees, departments, countries, jobs, locations, job history, and regions. Understanding the relationships between these tables is crucial for querying and managing the data effectively.




