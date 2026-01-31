/* focus: WHERE, ORDER BY, LIMIT, Basic Filtering
Q1: Simple Selection with Single Condition
Scenario: The HR manager needs a list of all employees working at the Mumbai store (store_id = 1) for an
upcoming team meeting.
Task: Write a SELECT query to retrieve the employee names and salaries of all employees assigned to
store_id = 1.
Tables: employees
Expected Output: Employee names and their salaries from Mumbai store */

use supermarketdb;
SELECT employee_name, salary from employees where store_id = 1;

/* Q2: Filtering with Multiple Conditions
Scenario: The finance department wants to identify high-earning employees to review their compensation
packages.
Task: Select all employees whose salary is greater than 50,000. Display employee_name, department_id, and
salary, ordered by salary in descending order.
Tables: employees
Hint: Use WHERE clause with comparison operator and ORDER BY DESC */

select employee_name,department_id,salary from employees where salary > 50000 order by salary desc;

/* Q3: Using IN Operator
Scenario: The procurement team is reviewing products from specific categories for a promotional campaign.
Task: Retrieve all products that belong to categories 'Fruits' (category_id = 1) or 'Dairy' (category_id = 3). Show
product_name, category_id, and price.
Tables: products
Hint: Use IN operator: WHERE category_id IN (1, 3) */

select * from products where category_id in (1, 3);

/* Q4: Pattern Matching with LIKE
Scenario: A customer calls asking about all cheese products available in the store.
Task: Find all products whose name contains the word 'Cheese'. Display product_name and price.
Tables: products
Hint: Use LIKE operator with wildcards: WHERE product_name LIKE '%Cheese%' */

select * from products where product_name like '%Cheese%';

/* Q5: Range Filtering with BETWEEN
Scenario: The marketing team wants to create a mid-range product catalog for budget-conscious customers.
Task: Select all products with prices between $2.00 and $5.00 (inclusive). Show product_name and price,
ordered by price.
Tables: products
Hint: Use BETWEEN operator for range queries */

select * from products where price BETWEEN 2 and 5;

/* Q6: Column Aliases for Clarity
Scenario: Creating a customer contact list for a marketing campaign email.
Task: Select customer_name, customers_email_id, and city from the customers table. Use aliases: 'Customer
Name', 'Email Address', and 'Location'.
Tables: customers
Hint: Use AS keyword for aliases: SELECT column AS 'Alias Name' */

select customer_name as'Customer Name', customers_email_id as 'Customres Email ID', city as 'Customers Location' from customers;

/* Q7: Calculated Fields
Scenario: The company is planning to give a 10% salary increment to all employees and wants to preview the
new salaries.
Task: Display employee_name, current salary, and projected salary (salary * 1.10) with appropriate aliases.
Order by employee_name.
Tables: employees
Expected Output: Three columns - Name, Current Salary, New Salary */

select employee_name as 'Employee Name', 
salary as 'Current Salary', 
salary * 0.10 + salary as "New Salary" from employees;
select * from employees;

/* Q8: Combining Multiple Conditions with Projection
Scenario: Finding affordable dairy products for a weekly special promotion.
Task: Select product_name and price for products in the 'Dairy' category (category_id = 3) with price less than
$4.00. Show as 'Product' and 'Sale Price'. */ 

select product_name as 'Products Name' , price as 'Sale Price'  from products where category_id in (3) and price < 4;
select * from products;

/* Q9: Simple INNER JOIN (Two Tables)
Scenario: The HR department needs a report showing each employee's name along with their department
name.
Task: Join employees and departments tables to show employee_name, department_name, and salary. Order
by department_name.
Tables: employees, departments
Hint: JOIN departments ON employees.department_id = departments.department_id */

SELECT e.employee_name as 'Employee Name', d.department_name as 'Department Name', e.salary as 'Salary', e.department_id as 'Department ID'
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

/* Q10: INNER JOIN with Filtering
Scenario: Generate a product catalog showing product names with their category names, but only for products
under $3.00.
Task: Join products and categories tables. Display product_name, category_name, and price for products
priced below $3.00.
Tables: products, categories
Hint: Apply WHERE clause after JOIN */ 

SELECT p.product_name as 'Product Name', c.category_name as 'Category', p.price as 'Price'
from products p
join categories c on p.category_id = c.category_id
where price < 3;

/* Q11: Three-Table JOIN
Scenario: Creating a comprehensive employee directory with full location details.
Task: Join employees, departments, and stores to show employee_name, department_name, store_name, and
city. Order by city, then employee_name.
Tables: employees, departments, stores
Hint: Chain multiple JOINs: FROM employees JOIN departments ... JOIN stores ... */

select e.employee_name as 'Employee Name', d.department_name as 'Department Name', s.store_name as 'Store Name'
from employees e
join departments d on e.department_id = d.department_id
join stores s on e.store_id= s.store_id;

/* Q12: LEFT JOIN to Find Missing Data
Scenario: The inventory manager wants to identify which products have NO stock records in any store.
Task: Use LEFT JOIN between products and inventory to find products with NULL inventory_id. Display
product_name and product_id.
Tables: products, inventory
Hint: LEFT JOIN products to inventory, then WHERE inventory.inventory_id IS NULL */ 

SELECT p.product_name as 'Products Name', i.stock_quantity as "Stocks Present" 
from products p 
left join inventory i on p.product_id = i.product_id;

/* Q13: Complex JOIN with Multiple Conditions
Scenario: Finding all products supplied by AgroFresh (supplier_id = 1) that are currently in stock at any store.
Task: Join products, suppliers, and inventory. Show product_name, supplier_name, and stock_quantity where
supplier is 'AgroFresh' and stock_quantity > 0.
Tables: products, suppliers, inventory
Expected Output: Only AgroFresh products with available stock */

select p.product_name as 'Product Name', su.supplier_name as 'Suppliers Name', i.stock_quantity as 'Stocks Available for products'
from products p
join suppliers su on p.supplier_id = su.supplier_id
left join inventory i on p.product_id = i.product_id
where supplier_name = "AgroFresh" and stock_quantity > 0;

/* Q14: Basic COUNT and AVG
Scenario: HR wants to know the total number of employees and their average salary across the company.
Task: Calculate the total count of employees and the average salary. Use aliases 'Total Employees' and
'Average Salary'.
Tables: employees
Hint: SELECT COUNT(*) AS ..., AVG(salary) AS ... FROM employees */ 

SELECT count(employee_name) as 'Total no of Employees', avg(salary) as 'Average Salary of Employees' from employees; 

/* Q15: GROUP BY Single Column
Scenario: Understanding employee distribution across departments.
Task: Count the number of employees in each department. Show department_id and employee count. Order
by count descending.
Tables: employees
Hint: GROUP BY department_id, then COUNT(*) */ 


use supermarketdb;

select department_id as 'Departement ID', count(employee_id) as 'Count of Employee'
from employees group by department_id order by count(employee_id) desc;
 