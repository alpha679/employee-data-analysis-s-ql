# Employee Data Analysis Using SQL and SQLite

## Project overview
This beginner portfolio project uses SQL and SQLite to explore a fictional dataset of 10 employees. It answers basic business questions about department headcount and salary distribution.

> **Dataset note:** All employee names and records in this project are fictional and used for learning.

## Objectives
- Create and query a relational table with SQLite.
- Count employees by department.
- Calculate total, average, highest, and lowest salaries.
- Filter grouped results with `HAVING`.
- Sort results with `ORDER BY`.

## Tools
- SQL
- SQLite

## Repository files
- `employee_analysis.sql` — creates the table, inserts sample records, and contains the analysis queries.
- `README.md` — project documentation, questions, and findings.

## Dataset columns
| Column | Description |
|---|---|
| `emp_id` | Unique employee identifier (primary key) |
| `emp_name` | Employee name |
| `department` | Department |
| `salary` | Salary as an integer |
| `city` | City |

## Business questions and findings

The following findings are calculated from the 10 sample records in the SQL script.

### 1. Which departments have the most employees?
- IT: 3 employees
- Sales: 3 employees
- Finance: 2 employees
- HR: 2 employees

### 2. Which department has the highest total salary?
| Department | Total salary |
|---|---:|
| IT | 160,000 |
| Sales | 108,000 |
| Finance | 90,000 |
| HR | 67,000 |

IT has the highest total salary expenditure in this sample, at 160,000.

### 3. What is the average salary by department?
| Department | Average salary |
|---|---:|
| IT | 53,333.33 |
| Finance | 45,000 |
| Sales | 36,000 |
| HR | 33,500 |

Departments with an average salary greater than 35,000 are IT, Finance, and Sales.

### 4. What are the highest and lowest salaries by department?
| Department | Lowest salary | Highest salary |
|---|---:|---:|
| Finance | 42,000 | 48,000 |
| HR | 32,000 | 35,000 |
| IT | 45,000 | 60,000 |
| Sales | 30,000 | 40,000 |

## How to run the project
1. Download or clone this repository.
2. Open `employee_analysis.sql` in a SQLite-compatible editor, such as DB Browser for SQLite, or use the SQLite command-line tool.
3. Run the script.
4. Review the result set after each `SELECT` statement.

The script uses `CREATE TABLE IF NOT EXISTS` and `INSERT OR IGNORE` so rerunning it does not add duplicate rows for the same employee IDs. If you change the sample data, rerun the queries and update the findings in this README.

## SQL concepts demonstrated
`CREATE TABLE`, `INSERT OR IGNORE`, `SELECT`, `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`, `GROUP BY`, `HAVING`, `ORDER BY`, and column aliases.

## Limitations and next steps
- The dataset is small and fictional; it should not be used to make real compensation decisions.
- The project currently focuses on SQL summaries rather than visualization.
- Future improvements could include a larger dataset, joins across multiple tables, data-quality checks, and a dashboard in Excel or Power BI.

## Author
Sohel — MCA student learning SQL and SQLite.
