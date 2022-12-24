# Grocery-Database-Management
The objective is to design a database using Mysql in such a way that the information can be stored in an efficient manner. The stored information could be used to perform customer Analytics and further improve the business model in an agile manner. 

Implementation:
We first started with table creation. Below are the 12 tables which we created along with the list of attributes:
Customer:customer_id,customer_first_name,customer_last_name,customer_street_address,customer_city,customer_state,customer_zipcode,customer_phone_number, customer_email
Employee:Employee_id,store_id,Employee_first_name,Employee_ssn,Employee_email,  Employee_phone_number
Order Details : order_id, product_id, quantity
Orders : order_id, customer_id, order_date.
Product : product_id, store_id,  product_type,  product_price,  product_details
Store:store_id,store_name,store_street_address,store_city,store_state,store_zipcode,store_phone_number,store_email                                                     Supplier:supplier_id,store_id,supplier_name,supplier_phone_number, supplier_email
Sales Representative: Employee_id, No_of_sales
Instore : Employee_id,Instore_experience
Supply Product: supplier_id,product_id
Rewards: customer_id,customer_rewards
Employee trigger: employee_id,employee_first_name,action_type,action_date

We added 15 records to each table after they were created.

Stored Procedures, Functions, and Triggers:
We then created stored procedures, functions, and triggers.

We have two stored functions:
To compute an order's order price.
To compute the customer's reward points based on the amount purchased.

We have two stored procedures:
We developed a procedure for easily entering customer information into the customer table.
Used the previously mentioned function to assign levels based on reward points.

We also have four triggers:
Two triggers are used to save employee details when they are changed.
Two triggers ensure that the product quantity never falls below zero.

Queries, Subqueries, Views, and Joins:
Finally, we used queries, subqueries, Views, and joins to meet our functionalities and business needs.

