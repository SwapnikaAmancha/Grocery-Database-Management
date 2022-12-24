Drop database if exists Grocery;
create database if not exists Grocery;
use Grocery;
#store table
drop table if exists store_t;
create table store_t(
store_id int not null auto_increment,
store_name char(40) not null,
store_street_address varchar(30),
store_city char(40),
store_state char(20),
store_zipcode int,
store_phone_number varchar(10),
store_email varchar(30),
constraint store_storeid_pk primary key (store_id),
constraint store_storestateand_unique unique (store_zipcode)
);
insert into store_t values (1, 'sam_a', '2289 Tals road', 'reston', 'virginia', 20191, 9085676561, 'sam_a@gmail.com');
insert into store_t values (2, 'sam_b', '153 Falls church', 'Fairfax', 'virginia', 20192, 9085676562, 'sam_b@gmail.com');
insert into store_t values (3, 'sam_c', '272 Galatyn', 'richardson', 'Texas', 75082, 9085676563, 'sam_c@gmail.com');
insert into store_t values (4, 'sam_d', '273 Ashwood', 'richardson', 'Texas', 75085, 9085676564, 'sam_d@gmail.com');
insert into store_t values (5, 'sam_e', '150 Maccallum', 'richardson', 'Texas', 75081, 9085676565, 'sam_e@gmail.com');
insert into store_t values (6, 'sam_f', '350 justin', 'Justin', 'Texas', 76092, 9085676566, 'sam_f@gmail.com');
insert into store_t values (7, 'sam_g', '450 Allen', 'Allen', 'Texas', 72789, 9085676567, 'sam_g@gmail.com');
insert into store_t values (8, 'sam_h', '670 Carrollton', 'Carrollton', 'Texas', 75908, 9085676568, 'sam_h@gmail.com');
insert into store_t values (9, 'sam_i', '890 Frisco', 'Frisco', 'Texas', 72356, 9085676569, 'sam_i@gmail.com');
insert into store_t values (10, 'sam_j', '670 Estate', 'richardson', 'Texas', 75658, 9085676513, 'sam_j@gmail.com');
insert into store_t values (11, 'sam_k', '650 green', 'Reston', 'Texas', 20987, 9085676523, 'sam_k@gmail.com');
insert into store_t values (12, 'sam_l', '876 Red', 'Irving', 'Texas', 77678, 9085676533, 'sam_l@gmail.com');
insert into store_t values (13, 'sam_m', '909 White', 'Garland', 'Texas', 79875, 9085676543, 'sam_m@gmail.com');
insert into store_t values (14, 'sam_n', '879 reston pkwy', 'Plano', 'Texas', 90876, 9085676553, 'sam_n@gmail.com');
insert into store_t values (15, 'sam_o', '098 pkwy', 'Farmers branch', 'Texas', 87909, 9085676573, 'sam_o@gmail.com');

#supplier table
drop table if exists supplier_t;
create table supplier_t(
supplier_id int not null,
store_id int,
supplier_name char(25) not null,
supplier_phone_number varchar(10),
supplier_email varchar(30),
constraint supplier_supplierid_pk primary key (supplier_id),
constraint supplier_storeid_fk foreign key (store_id) references store_t (store_id),
constraint supplier_phonenumber_unique unique (supplier_phone_number));
insert into supplier_t values (400, 1, 'krishna', 9896505421, 'krishna@gmail.com');
insert into supplier_t values (401, 2, 'Andy', 9896505422, 'Andy@gmail.com');
insert into supplier_t values (402, 3, 'John', 9896505423, 'John@gmail.com');
insert into supplier_t values (403, 4, 'Alex', 9896505424, 'Alex@gmail.com');
insert into supplier_t values (404, 5, 'Bo', 9896505425, 'Bo@gmail.com');
insert into supplier_t values (405, 6, 'Ginny', 9896505426, 'Ginny@gmail.com');
insert into supplier_t values (406, 7, 'Ram', 9896505427, 'Ram@gmail.com');
insert into supplier_t values (407, 8, 'Sita', 9896505428, 'sita@gmail.com');
insert into supplier_t values (408, 9, 'Yang', 9896505429, 'Yang@gmail.com');
insert into supplier_t values (409, 10, 'Kim', 9896505411, 'kim@gmail.com');
insert into supplier_t values (410, 11, 'Choi', 9896505412, 'Choi@gmail.com');
insert into supplier_t values (411, 12, 'Shioban', 9896505413, 'Shioban@gmail.com');
insert into supplier_t values (412, 13, 'Kendall', 9896505414, 'Kendall@gmail.com');
insert into supplier_t values (413, 14, 'Roy', 9896505415, 'Roy@gmail.com');
insert into supplier_t values (414, 15, 'Ken', 9896505416, 'Ken@gmail.com');

#product table
drop table if exists product_t;
create table product_t(
product_id integer auto_increment,
store_id integer,
product_type char(20),
product_price integer not null,
product_details varchar(20),
constraint product_producid_pk primary key (product_id),
constraint `product_storeid_fk` foreign key (`store_id`) references `store_t` (`store_id`))auto_increment = 200;
insert into product_t(store_id,product_type,product_price,product_details) values (4,'Dairy',20,'cheese');
insert into product_t(store_id,product_type,product_price,product_details) values (2,'Meat',25,'pork');
insert into product_t(store_id,product_type,product_price,product_details) values (7,'Condiments',6,'Ranch');
insert into product_t(store_id,product_type,product_price,product_details) values (1,'Bread',8,'BrownBread');
insert into product_t(store_id,product_type,product_price,product_details) values (8,'Dairy',7,'milk');
insert into product_t(store_id,product_type,product_price,product_details) values (3,'Candy',17,'Twix');
insert into product_t(store_id,product_type,product_price,product_details) values (11,'Breakfast',13,'granola');
insert into product_t(store_id,product_type,product_price,product_details) values (15,'Meat',27,'Beef');
insert into product_t(store_id,product_type,product_price,product_details) values (9,'Dairy',15,'Yogurt');
insert into product_t(store_id,product_type,product_price,product_details) values (6,'Candy',16,'Mint');
insert into product_t(store_id,product_type,product_price,product_details) values (12,'Condiments',9,'Ketchup');
insert into product_t(store_id,product_type,product_price,product_details) values (10,'Coffee',19,'InstantCoffee');
insert into product_t(store_id,product_type,product_price,product_details) values (13,'Breakfast',12,'oatmeal');
insert into product_t(store_id,product_type,product_price,product_details) values (5,'Dairy',18,'Butter');
insert into product_t(store_id,product_type,product_price,product_details) values (14,'Beverage',14,'water');
select * from product_t;

#supply_product table
drop table if exists supply_product_t;
create table supply_product_t(
supplier_id int,
product_id int,
constraint supplyproduct_supplierandproductid_pk primary key (supplier_id,product_id),
constraint supplyproduct_supplierid_fk foreign key (supplier_id) references supplier_t (supplier_id),
constraint supplyproduct_productid_fk foreign key (product_id) references product_t (product_id));
select * from supply_product_t;
insert into supply_product_t values (400, 214);
insert into supply_product_t values (401, 213);
insert into supply_product_t values (402, 212);
insert into supply_product_t values (403, 211);
insert into supply_product_t values (404, 210);
insert into supply_product_t values (405, 209);
insert into supply_product_t values (406, 208);
insert into supply_product_t values (407, 207);
insert into supply_product_t values (408, 206);
insert into supply_product_t values (409, 205);
insert into supply_product_t values (410, 204);
insert into supply_product_t values (411, 203);
insert into supply_product_t values (412, 202);
insert into supply_product_t values (413, 201);
insert into supply_product_t values (414, 200);

#customer table
drop table if exists customer_t;
create table customer_t(
customer_id integer auto_increment,
store_id integer,
customer_first_name varchar(20) not null,
customer_last_name varchar(20),
customer_street_address varchar(30) not null,
customer_city varchar(10),
customer_state varchar(15),
customer_zipcode varchar(7) ,
customer_phone_number varchar(13),
customer_email varchar(30) UNIQUE,
customer_rewards int,
primary key (customer_id),
foreign key (store_id) references store_t (store_id)
)AUTO_INCREMENT = 300;
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (5, 'Swapna', 'Kotha', 'West Pkwy', 'Frisco', 'Texas','20192','8765489765','swapnika@gmail.com', 50000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (1, 'Nishma', 'Kottam', 'Pkwy', 'Frisco', 'Texas','20192','8765489764','nishma@gmail.com', 10000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (6, 'Sairee', 'Reddy', 'West ', 'Plano', 'Texas','20192','8765489763','saisree@gmail.com', 20000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (8, 'Anisha', 'Narva', 'Synergy', 'Richardson', 'Texas','20193','8765489760','anisha@gmail.com', 1000000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (4, 'Nandan', 'Palle', 'Renner', 'Irving', 'Texas','20191','8765489761','nandan@gmail.com', 70000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (7, 'Pavan', 'Allam', 'Northside', 'Richardson', 'Texas','20193','8765489762','pavan@gmail.com', 80000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (5, 'Pranathi', 'Patil', 'Ashwood', 'Irving', 'Texas','20191','8765489767','pranathi@gmail.com', 90000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (1, 'Aish', 'Ratkal', 'Chatham', 'Richardson', 'Texas','20193','8765489768','aish@gmail.com', 20000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (13, 'Charitha', 'Kollu', 'Marquis', 'Plano', 'Texas','20192','8765489775','charitha@gmail.com', 100001);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address,customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (12, 'Vuha', 'Lavu', 'EOR', 'Allen', 'Texas','20194','8765489865','vuha@gmail.com', 35000 );
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (12, 'Latha', 'Roy', 'Pradera', 'McKinney', 'Texas','20195','8865489765','latha@gmail.com', 40000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (10, 'vandana', 'varma', 'MAA', 'McKinney', 'Texas','20195','8765889765','vandana@gmail.com', 50000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address,  customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (7, 'niharika', 'sontam', 'Heritage', '', 'Texas','20192','8765489765','niharika@gmail.com', 60000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address,  customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (5, 'Pavani', 'Panti', 'Northside', 'Anna', 'Texas','20192','8765489765','pavani@gmail.com', 75000);
INSERT INTO Customer_t (store_id, customer_first_name, customer_last_name, customer_street_address, customer_city, customer_state, customer_zipcode, customer_phone_number, customer_email, customer_rewards)
VALUES (10, 'Bavith', 'Kotha', 'Custer', 'Anna', 'Texas','20192','8689489765','bavith@gmail.com', 85000);

#Employee table:
drop table if exists Employee_T;
CREATE TABLE if not exists Employee_T(
employee_id INTEGER AUTO_INCREMENT,
store_id INTEGER,
employee_first_name VARCHAR(20) NOT NULL,
employee_ssn INTEGER,
employee_email VARCHAR(25),
employee_phone_number varchar(10),
CONSTRAINT employee_employeeid_pk PRIMARY KEY (employee_id),
CONSTRAINT employee_storeid_fk FOREIGN KEY (store_id) REFERENCES store_t (store_id),
CONSTRAINT employee_phonenumber_unique UNIQUE (employee_phone_number))AUTO_INCREMENT=100;

DESC Employee_T;

INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(2,'Teja',453876,'teja@gmail.com',9864783678);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(6,'Ram',672097,'ram@gmail.com',9467839206);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(4,'Raghu',482904,'raghu@gmail.com',4783672902);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(1,'Sita',156872,'sita@gmail.com',2457893567);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(7,'Daya',879222,'daya@gmail.com',9876543027);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(3,'Akhil',167983,'akhil@gmail.com',9880753672);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(8,'Akshay',097467,'akshay@gmail.com',7684673920);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(5,'Vooha',937632,'vooha@gmail.com',8379462074);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(9,'Sai',654338,'sai@gmail.com',9008726849);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(13,'Andy',865346,'andy@gmail.com',7889046378);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(11,'Alex',975378,'alex@gmail.com',2675894003);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(10,'John',109783,'john@gmail.com',4675889033);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(15,'Aisha',652789,'aisha@gmail.com',9667559903);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(12,'Tejas',478920,'tejas@gmail.com',8997706547);
INSERT INTO Employee_T(store_id,employee_first_name,employee_ssn,employee_email,employee_phone_number) VALUES(14,'Suga',628940,'suga@gmail.com',8667588499);
select * from Employee_T;
#sales representative table:
CREATE TABLE Sales_Representative_T(
employee_id INTEGER,
no_of_sales INTEGER,
CONSTRAINT salesrepresentative_employeeid_pk PRIMARY KEY (employee_id),
CONSTRAINT salesrepresentative_employeeid_fk FOREIGN KEY (employee_id) REFERENCES Employee_T (employee_id));

DESC Sales_Representative_T;

INSERT INTO Sales_Representative_T VALUES(100,45);
INSERT INTO Sales_Representative_T VALUES(101,100);
INSERT INTO Sales_Representative_T VALUES(102,67);
INSERT INTO Sales_Representative_T VALUES(103,57);
INSERT INTO Sales_Representative_T VALUES(104,250);
INSERT INTO Sales_Representative_T VALUES(105,72);
INSERT INTO Sales_Representative_T VALUES(106,150);
INSERT INTO Sales_Representative_T VALUES(107,80);
INSERT INTO Sales_Representative_T VALUES(108,39);
INSERT INTO Sales_Representative_T VALUES(109,58);
INSERT INTO Sales_Representative_T VALUES(110,110);
INSERT INTO Sales_Representative_T VALUES(111,268);
INSERT INTO Sales_Representative_T VALUES(112,90);
INSERT INTO Sales_Representative_T VALUES(113,79);
INSERT INTO Sales_Representative_T VALUES(114,59);

#instore table:
CREATE TABLE Instore_T(
employee_id INTEGER,
instore_experience INTEGER,
CONSTRAINT instore_employeeid_pk PRIMARY KEY (employee_id),
CONSTRAINT instore_employeeid_fk FOREIGN KEY (employee_id) REFERENCES Employee_T (employee_id));

DESC Instore_T;

INSERT INTO Instore_T VALUES (100,5);
INSERT INTO Instore_T VALUES (101,10);
INSERT INTO Instore_T VALUES (102,9);
INSERT INTO Instore_T VALUES (103,7);
INSERT INTO Instore_T VALUES (104,6);
INSERT INTO Instore_T VALUES (105,4);
INSERT INTO Instore_T VALUES (106,7);
INSERT INTO Instore_T VALUES (107,9);
INSERT INTO Instore_T VALUES (108,8);
INSERT INTO Instore_T VALUES (109,10);
INSERT INTO Instore_T VALUES (110,10);
INSERT INTO Instore_T VALUES (111,9);
INSERT INTO Instore_T VALUES (112,5);
INSERT INTO Instore_T VALUES (113,5);
INSERT INTO Instore_T VALUES (114,9);

#Orders table:
drop table if exists orders_t;
create table orders_t(
order_id integer auto_increment,
customer_id integer,
order_date date,
primary key (order_id),
foreign key (customer_id) references customer_t(customer_id)) auto_increment = 500;
insert into orders_t(customer_id, order_date) values (309,'2022-08-06');
insert into orders_t(customer_id, order_date) values (310,'2022-08-15');
insert into orders_t(customer_id, order_date) values (312,'2022-06-06');
insert into orders_t(customer_id, order_date) values (309,'2022-05-16');
insert into orders_t(customer_id, order_date) values (311,'2022-08-06');
insert into orders_t(customer_id, order_date) values (313,'2022-08-06');
insert into orders_t(customer_id, order_date) values (305,'2022-11-05');
insert into orders_t(customer_id, order_date) values (303,'2022-09-23');
insert into orders_t(customer_id, order_date) values (304,'2022-07-09');
insert into orders_t(customer_id, order_date) values (305,'2022-06-05');
insert into orders_t(customer_id, order_date) values (306,'2022-02-12');
insert into orders_t(customer_id, order_date) values (314,'2022-05-31');
insert into orders_t(customer_id, order_date) values (307,'2022-09-24');
insert into orders_t(customer_id, order_date) values (310,'2022-01-06');
insert into orders_t(customer_id, order_date) values (312,'2022-02-04');

#order details table:
drop table if exists order_details_t;
create table order_details_t(
order_id integer,
product_id integer,
quantity integer not null,
constraint orderdetails_orderandproductid_pk primary key (order_id,product_id),
constraint orderdetails_orderid_fk foreign key (order_id) references orders_t (order_id),
constraint orderdetails_productid_fk foreign key (product_id) references product_t (product_id));
insert into order_details_t(order_id,product_id,quantity) values (514,204,4);
insert into order_details_t(order_id,product_id,quantity) values (510,201,1);
insert into order_details_t(order_id,product_id,quantity) values (508,206,6);
insert into order_details_t(order_id,product_id,quantity) values (512,202,2);
insert into order_details_t(order_id,product_id,quantity) values (500,207,7);
insert into order_details_t(order_id,product_id,quantity) values (503,209,9);
insert into order_details_t(order_id,product_id,quantity) values (505,213,2);
insert into order_details_t(order_id,product_id,quantity) values (511,211,11);
insert into order_details_t(order_id,product_id,quantity) values (513,205,19);
insert into order_details_t(order_id,product_id,quantity) values (509,203,2);
insert into order_details_t(order_id,product_id,quantity) values (507,214,4);
insert into order_details_t(order_id,product_id,quantity) values (502,212,2);
insert into order_details_t(order_id,product_id,quantity) values (506,208,1);
insert into order_details_t(order_id,product_id,quantity) values (501,210,1);
insert into order_details_t(order_id,product_id,quantity) values (504,200,5);
insert into order_details_t(order_id,product_id,quantity) values (504,201,6);
insert into order_details_t(order_id,product_id,quantity) values (501,201,7);
insert into order_details_t(order_id,product_id,quantity) values (507,202,8);
insert into order_details_t(order_id,product_id,quantity) values (507,201,2);
insert into order_details_t(order_id,product_id,quantity) values (507,208,9);
insert into order_details_t(order_id,product_id,quantity) values (504,214,6);
insert into order_details_t(order_id,product_id,quantity) values (506,201,4);
insert into order_details_t(order_id,product_id,quantity) values (502,202,7);
insert into order_details_t(order_id,product_id,quantity) values (501,200,2);
insert into order_details_t(order_id,product_id,quantity) values (507,212,9);

#queries
#1.Retrieve the max quantity purchased from the list based on their product id’s.
select product_id,max(quantity) from order_details_t group by product_id;

#2.Retrieve the max quantity purchased from the order details list whose product price greater than 10 and max quantity higher than 3.
select p.product_id,max(od.quantity) from order_details_t od,product_t p where od.product_id = p.product_id and
p.product_price > 10 group by p.product_id having max(od.quantity) >3;

#3.Retrieve the total product price based on product id and the grand total of product price.
select product_details,sum(product_price) from product_t group by product_details with rollup;

#4.Retrieving the orders, order details of the customers whose order id is either 501 or 503 and quantity higher than 2.
select * from orders_t o,order_details_t od where o.order_id=od.order_id and o.order_id in (501,503) and od.quantity>2;

#5.Retrieving the store id, order id and customer id of the customers who has placed the orders in the store 102 and quantity more than 1.
select o.order_id,o.customer_id,p.store_id from orders_t o,order_details_t od,product_t p where o.order_id=od.order_id and od.product_id=p.product_id
and p.store_id=11 and od.quantity>2;

#2 table joins 
#Retrieve the customer first name with upper case and last name as lower case of the customer whose id is 311 and order id is 504.
select upper(customer_first_name) as First_Name,lower(customer_last_name) as Last_Name
from (select * from customer_t join orders_t using (customer_id) where customer_id = 311 and order_id = 504) as opt;

#3 table join
#Retrieving the store id, order id and customer id of the customers who has placed the orders in the stores.
select o.order_id,o.customer_id,p.store_id from orders_t o join order_details_t od on o.order_id=od.order_id 
join product_t p on od.product_id=p.product_id;

#Retrieve the name of the supplier and round up of the product price .
select supplier_name,round(product_price) from supplier_t 
join supply_product_t using(supplier_id) join product_t using(product_id)
where product_id=213;

#Retrieve customer details,order details and product details with the total product price based and the grand total of product price.
select c.customer_id,c.customer_first_name,o.order_date,od.quantity,p.product_type,p.product_details,sum(p.product_price)
from customer_t c join orders_t o using(customer_id) join order_details_t od using(order_id) join product_t p using (product_id)
group by product_details with rollup;


#Sub-Queries
#List customer details  who purchased on date "2022-08-06"
SELECT orders_t.order_id, orders_t.order_date,
orders_t.customer_id,
(SELECT customer_last_name FROM customer_t
WHERE customer_t.customer_id = orders_t.customer_id) as last_name
FROM orders_t
WHERE orders_t.order_Date = '2022-08-06';

#subquery with the GROUP BY statement and HAVING clause.
#List out the order id’s who purchased the products with higher purchase cost than order_id  503.
select order_id from order_details_t,product_t
where order_details_t.product_id=product_t.product_id group by(order_id)
having  sum(quantity*product_price)  >
(select sum(quantity*product_price) total from order_details_t,product_t where order_details_t.product_id=
product_t.product_id and order_id= 503);

# List the  customer names who made top 5 highest spending orders  
select  (SELECT customer_first_name FROM customer_t
WHERE customer_t.customer_id = orders_t.customer_id  ) as first_name,total_purchase_price_of_order_DOLLARS from orders_t
INNER JOIN (   
select order_id, sum(quantity*product_price) as total_purchase_price_of_order_DOLLARS  from order_details_t,product_t 
where order_details_t.product_id= product_t.product_id   group by order_id order by total_purchase_price_of_order_DOLLARS DESC limit 5) as top_5_orders
ON orders_t.order_id=top_5_orders.order_id;

# List all the customers  who purchased product named "pork"
# with  higher quantity than the average quantities purshased by all other customers for that same product.
select customer_id, 
(SELECT customer_first_name FROM customer_t WHERE customer_t.customer_id = orders_t.customer_id) as my_customer_first_name ,
quantity 
from order_details_t,orders_t 
where order_details_t.order_id=orders_t.order_id and product_id IN 
(select product_id from product_t where product_details = 'pork')  and 
quantity > (select avg(quantity) from order_details_t where product_id IN (select product_id from product_t where product_details = 'pork') );

#List the employee details whose sales are greater than average number of sales for all employees
SELECT Sales_Representative_T.no_of_sales,Employee_T.employee_first_name,Employee_T.employee_ssn ,Employee_T.employee_id
from Employee_T,Sales_Representative_T  WHERE  Sales_Representative_T.employee_id=Employee_T.employee_id and no_of_sales > 
(SELECT avg(Sales_Representative_T.no_of_sales)  from   Sales_Representative_T );

#Functions and Proceedures
#function to calculate the order price
drop function if exists order_price;
DELIMITER $$
CREATE FUNCTION order_price ( order_id BIGINT, product_id BIGINT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
DECLARE Amount decimal(10,2);
declare quotedprice decimal(10,2);
declare quantityordered BIGINT;
set @quotedprice = (select p.product_price from product_t p where p.product_id = product_id);
set @quantityordered = (select od.quantity from order_details_t od where od.order_id = order_id);

set Amount = @QuotedPrice* @QuantityOrdered;
return(Amount);
END $$
DELIMITER ;
SELECT order_price(500,207) AS order_total;

#Functions and Proceedures
#Proceedure and function to get CustomerLevel
drop function if exists CustomerRewards;
drop procedure if exists GetCustomer_Levels;
DELIMITER $$
CREATE FUNCTION CustomerRewards(
customer_rewards DECIMAL(10,2)
)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
DECLARE customerReward VARCHAR(20);
	IF customer_rewards > 50000 THEN
		SET customerReward = 'PLATINUM';
	ELSEIF ( customer_rewards <= 50000 and customer_rewards >=10000) THEN
		SET customerReward = 'GOLD';
	ELSE
		SET customerReward= 'SILVER';
	END IF;
	RETURN (customerReward);
END $$
DELIMITER ; 

DELIMITER $$
CREATE PROCEDURE GetCustomer_Levels (
	IN id INT,
    OUT customerLevel VARCHAR(20)
)
BEGIN
	DECLARE reward_points DEC(10,2) DEFAULT 0 ;
    SELECT customer_rewards INTO reward_points
    FROM customer_t
    WHERE customer_id = id;
    SET customerLevel = CustomerRewards(reward_points);
END $$

DELIMITER ;
CALL GetCustomer_Levels(1,@CustomerRewards);
select @CustomerRewards;

#procedure to store customer details.
drop procedure if exists customer_in_P;
DELIMITER // 
CREATE PROCEDURE customer_in_P(
IN p_cust_id integer ,
IN p_store_id integer,
IN p_customer_first_name varchar(20) ,
IN p_customer_last_name varchar(20),
IN p_customer_street_address varchar(30),
IN p_customer_city varchar(10),
IN p_customer_state varchar(15),
IN p_customer_zipcode varchar(7) ,
IN p_customer_phone_number varchar(13),
IN p_customer_email varchar(30))
BEGIN
INSERT INTO customer_t(customer_id ,
store_id ,
customer_first_name ,
customer_last_name ,
customer_street_address ,
customer_city ,
customer_state ,
customer_zipcode  ,
customer_phone_number ,
customer_email) values(p_cust_id,
 p_store_id ,
 p_customer_first_name  ,
 p_customer_last_name ,
p_customer_street_address ,
 p_customer_city ,
p_customer_state ,
 p_customer_zipcode  ,
 p_customer_phone_number,
 p_customer_email);
 END //
 
 DELIMITER ;
call customer_in_P(72,14, 'ABCD', 'AKJD', 'POECJF', 'CHARIT', 'CALI','75364','7432987653','chaeitjsd@gmail.com');
select * from customer_t;

#Views
#Customer view with limited details;
Create View Customer_v 
AS
select customer_first_name, customer_city, customer_state from Customer_T;
#update view
CREATE OR REPLACE VIEW Customer_v 
AS
select customer_first_name,customer_street_address, customer_city, customer_state from Customer_T;

#trigger to store employee details when they are modified
drop table if exists employee_trigger;
create table employee_trigger(
employee_id int not null,
employee_first_name varchar(20) not null,
employee_ssn INTEGER,
employee_email VARCHAR(25),
employee_phone_number varchar(10),
action_type varchar(20) not null,
action_date Datetime not null
);
drop trigger if exists employee_after_update;
drop trigger if exists employee_after_delete;
DELIMITER //
create TRIGGER employee_after_update
    AFTER update on employee_t
    for each row
BEGIN
	insert into employee_trigger values
    (OLD.employee_id, OLD.employee_first_name, OLD.employee_ssn, OLD.employee_email, OLD.employee_phone_number,  'UPDATED', NOW());
END//
CREATE TRIGGER employee_after_delete
    AFTER DELETE ON employee_t
    for each row
BEGIN
    insert into employee_trigger values
    (OLD.employee_id, OLD.employee_first_name, OLD.employee_ssn, OLD.employee_email, OLD.employee_phone_number,'DELETED', NOW());
END//
UPDATE `Grocery`.`Employee_T` SET `employee_first_name` = 'Sam' WHERE (`employee_id` = '101');
SELECT * FROM employee_trigger;

INSERT INTO employee_t VALUES (36,2,'Tej', 672098,'tej@gmail.com',9864783681);
DELETE FROM `Grocery`.`employee_t` 
WHERE
    (`employee_id` = '36');
SELECT * FROM employee_trigger;

#to check that product quantity never goes below zero
DELIMITER //
CREATE TRIGGER qty_ins BEFORE INSERT ON order_details_t
FOR EACH ROW
BEGIN
    IF NEW.quantity < 0 THEN
        SIGNAL SQLSTATE '12345' 
        SET MESSAGE_TEXT = 'No of available products cannot be less than 0';
    END IF;
END;//
CREATE TRIGGER qty_upd BEFORE UPDATE ON order_details_t
FOR EACH ROW
BEGIN
    IF NEW.quantity < 0 THEN
        SIGNAL SQLSTATE '12345' 
        SET MESSAGE_TEXT = 'No of available products cannot be less than 0';
    END IF;
END;//
DELIMITER ;

insert into order_details_t values(514,204,-1);
UPDATE order_details_t 
SET quantity = - 2 WHERE order_id = 514;
    






