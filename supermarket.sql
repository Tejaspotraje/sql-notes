create database supermarketdb;
use supermarketdb;

-- 1) STORES TABLES
CREATE TABLE stores (
    store_id INT AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

-- ENTERING DATA IN THE STORES TABLE
INSERT INTO stores (store_name, city)
VALUES ('FreshMart Central','Mumbai'),
       ('FreshMart North','Delhi'),
       ('FreshMart South','Bangalore');
SELECT * FROM STORES;

-- 2) DEPARTMENT TABLE 
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

-- ENTERING DATA IN THE DEPARTMENT TABLE
INSERT INTO departments (department_name)
VALUES ('Sales'), ('Operations'), ('HR'), ('Inventory');

 -- 3) EMPLOYEES TABLE
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    store_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
) ENGINE=InnoDB;

-- ENTERING THE DATA IN THE EMPLOYEES TABLE.
INSERT INTO employees (
  employee_id,
  employee_name,
  department_id,
  store_id,
  salary,
  phone,
  email,
  date_of_joining
) VALUES
(1,  'Aarav Mehta',        1, 1, 42000.00, '5551000001', 'aarav.mehta@gmail.com',        '2019-03-15'),
(2,  'Riya Kulkarni',     2, 1, 38000.00, '5551000002', 'riya.kulkarni@gmail.com',     '2020-07-10'),
(3,  'Kabir Patel',       3, 2, 45000.00, '5551000003', 'kabir.patel@gmail.com',       '2018-11-05'),
(4,  'Neha Iyer',         1, 2, 40000.00, '5551000004', 'neha.iyer@gmail.com',         '2021-01-20'),
(5,  'Arjun Nair',        4, 3, 52000.00, '5551000005', 'arjun.nair@gmail.com',        '2017-06-18'),
(6,  'Pooja Sharma',      2, 1, 36000.00, '5551000006', 'pooja.sharma@gmail.com',      '2022-04-12'),
(7,  'Rohan Malhotra',    3, 2, 48000.00, '5551000007', 'rohan.malhotra@gmail.com',    '2019-09-01'),
(8,  'Sneha Banerjee',    1, 3, 41000.00, '5551000008', 'sneha.banerjee@gmail.com',    '2020-02-28'),
(9,  'Vikram Joshi',      4, 1, 55000.00, '5551000009', 'vikram.joshi@gmail.com',      '2016-12-14'),
(10, 'Ananya Rao',        2, 3, 39000.00, '5551000010', 'ananya.rao@gmail.com',        '2021-08-09'),
(11, 'Siddharth Verma',   3, 3, 47000.00, '5551000011', 'siddharth.verma@gmail.com',   '2018-05-23'),
(12, 'Maya Dsouza',       1, 1, 43000.00, '5551000012', 'maya.dsouza@gmail.com',       '2019-10-30'),
(13, 'Kunal Kapoor',     4, 2, 60000.00, '5551000013', 'kunal.kapoor@gmail.com',     '2015-04-17'),
(14, 'Isha Chatterjee',   2, 3, 37000.00, '5551000014', 'isha.chatterjee@gmail.com',   '2022-01-05'),
(15, 'Rahul Saxena',      3, 1, 46000.00, '5551000015', 'rahul.saxena@gmail.com',      '2017-09-19'),
(16, 'Nidhi Agarwal',     1, 2, 40500.00, '5551000016', 'nidhi.agarwal@gmail.com',     '2020-06-11'),
(17, 'Amit Bansal',       4, 3, 58000.00, '5551000017', 'amit.bansal@gmail.com',       '2016-02-03'),
(18, 'Shreya Sengupta',   2, 1, 39500.00, '5551000018', 'shreya.sengupta@gmail.com',   '2021-11-27'),
(19, 'Manish Tiwari',     3, 2, 49000.00, '5551000019', 'manish.tiwari@gmail.com',     '2018-08-16'),
(20, 'Priya Menon',       1, 3, 42000.00, '5551000020', 'priya.menon@gmail.com',       '2019-12-02'),
(21, 'Deepak Arora',      4, 1, 61000.00, '5551000021', 'deepak.arora@gmail.com',      '2015-10-21'),
(22, 'Tanvi Deshpande',   2, 3, 36500.00, '5551000022', 'tanvi.deshpande@gmail.com',   '2022-03-14'),
(23, 'Harsh Vardhan',     3, 3, 47500.00, '5551000023', 'harsh.vardhan@gmail.com',     '2017-01-08'),
(24, 'Ritu Khanna',       1, 2, 41500.00, '5551000024', 'ritu.khanna@gmail.com',       '2020-05-26'),
(25, 'Sanjay Gulati',     4, 2, 59000.00, '5551000025', 'sanjay.gulati@gmail.com',     '2016-07-07'),
(26, 'Pallavi Kulshrestha',2,3, 38500.00, '5551000026', 'pallavi.kulshrestha@gmail.com','2021-02-18'),
(27, 'Naveen Reddy',      3, 1, 46500.00, '5551000027', 'naveen.reddy@gmail.com',      '2018-04-29'),
(28, 'Kavita Pillai',     1, 2, 43000.00, '5551000028', 'kavita.pillai@gmail.com',     '2019-08-13'),
(29, 'Ajay Prakash',      4, 3, 57000.00, '5551000029', 'ajay.prakash@gmail.com',      '2016-11-24'),
(30, 'Meenal Sethi',      2, 1, 37500.00, '5551000030', 'meenal.sethi@gmail.com',      '2022-06-01'),
(31, 'Rakesh Choudhary',  3, 2, 48500.00, '5551000031', 'rakesh.choudhary@gmail.com',  '2017-03-10'),
(32, 'Swati Kulkarni',    1, 3, 41000.00, '5551000032', 'swati.kulkarni@gmail.com',    '2020-09-17'),
(33, 'Mohit Singhal',     4, 1, 60500.00, '5551000033', 'mohit.singhal@gmail.com',     '2015-01-26'),
(34, 'Ayesha Khan',       2, 2, 39000.00, '5551000034', 'ayesha.khan@gmail.com',       '2021-04-08'),
(35, 'Pranav Kuldeep',    3, 3, 47000.00, '5551000035', 'pranav.kuldeep@gmail.com',    '2018-10-15'),
(36, 'Rashmi Bhat',       1, 1, 42500.00, '5551000036', 'rashmi.bhat@gmail.com',       '2019-02-04'),
(37, 'Alok Mishra',       4, 1, 59500.00, '5551000037', 'alok.mishra@gmail.com',       '2016-06-30'),
(38, 'Sonal Gupta',       2, 3, 38000.00, '5551000038', 'sonal.gupta@gmail.com',       '2022-09-12'),
(39, 'Varun Bedi',        3, 1, 45500.00, '5551000039', 'varun.bedi@gmail.com',        '2017-12-19'),
(40, 'Nandita Roy',       1, 2, 43500.00, '5551000040', 'nandita.roy@gmail.com',       '2020-03-22');



-- 4) CATEGORIES TABLE
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

-- ENTERING DATA IN THE CATEGORIES TABLE:
INSERT INTO categories (category_name)
VALUES ('Fruits'), ('Vegetables'), ('Dairy'), ('Snacks'), ('Beverages');

-- 5) SUPPLIERS TABLE.
CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100),
    city VARCHAR(50)
) ENGINE=InnoDB;

-- ENTERING DATA IN THE SUPPLIERS TABLE.
INSERT INTO suppliers (supplier_name, city,phone,email) 
VALUES ('AgroFresh','Pune','6985214878','agrofresh56@gmail.com'),
       ('DairyBest','Ahmedabad','6955864878','dairybest69@gmail.com'),
       ('Snackify','Indore','6985621488','snackify58@gmail.com');
       
-- 6) PRODUCTS TABLE
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    supplier_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
) ENGINE=InnoDB;

--  INSERTING THE DATA IN THE PRODUCT TABLE:
INSERT INTO products (product_name, category_id, supplier_id, price) VALUES
-- Freshmart (Vegetables & Fruits) | supplier_id = 1
('Red Delicious Apples', 2, 1, 3.20),
('Banana Robusta', 2, 1, 1.50),
('Navel Oranges', 2, 1, 2.80),
('Green Grapes', 2, 1, 4.10),
('Fresh Strawberries', 2, 1, 4.90),
('Carrot Pack 1kg', 1, 1, 1.20),
('Potatoes 2kg Bag', 1, 1, 2.10),
('Onions 1kg', 1, 1, 1.00),
('Tomatoes Vine Fresh', 1, 1, 1.80),
('Spinach Bunch', 1, 1, 0.90),
('Broccoli Head', 1, 1, 2.40),
('Bell Peppers Mix', 1, 1, 3.50),

-- Dairy Best (Dairy Products) | supplier_id = 2
('Whole Milk 1L', 3, 2, 1.50),
('Low Fat Milk 1L', 3, 2, 1.45),
('Butter Unsalted 200g', 3, 2, 3.80),
('Cheddar Cheese 200g', 3, 2, 4.60),
('Mozzarella Cheese 200g', 3, 2, 4.20),
('Greek Yogurt 500g', 3, 2, 3.90),
('Fresh Cream 250ml', 3, 2, 2.70),
('Paneer Cubes 250g', 3, 2, 4.10),
('Flavored Yogurt Strawberry', 3, 2, 1.80),
('Ghee Pure Cow 500ml', 3, 2, 7.50),
('Buttermilk 1L', 3, 2, 1.20),

-- Sankeyfy (Snacks) | supplier_id = 3
('Roasted Sea Salt Nuts', 4, 3, 6.50),
('Classic Salted Potato Chips', 4, 3, 2.50),
('Spicy Tortilla Chips', 4, 3, 3.20),
('Chocolate Chip Cookies', 4, 3, 4.80),
('Salted Popcorn Pack', 4, 3, 1.80),
('Peanut Butter Crunchy', 4, 3, 5.90),
('Energy Granola Bars', 4, 3, 6.20),
('Cheese Crackers', 4, 3, 3.70),
('Mixed Trail Snack Pack', 4, 3, 7.40),
('Nacho Cheese Corn Chips', 4, 3, 3.60),
('Sweet & Spicy Roasted Peanuts', 4, 3, 2.90);


-- 7) INVENTORY TABLE
CREATE TABLE inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    store_id INT,
    product_id INT,
    stock_quantity INT,
    FOREIGN KEY (store_id) REFERENCES stores(store_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
) ENGINE=InnoDB;

-- INSERT DATA FOR THE INVENTORY TABLE
INSERT INTO inventory (store_id, product_id, stock_quantity) VALUES
(1, 1, 120),
(1, 3, 85),
(2, 5, 200),
(3, 8, 40),
(2, 12, 160),
(3, 15, 0),
(2, 18, 95);


-- 8) CUSTOMERS TABLE
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_phone_numbers VARCHAR(15),
    customers_email_id varchar(30),
    city VARCHAR(50)
) ENGINE=InnoDB;

-- INSERT THE DATA IN THE CUSTOMERS TABLE.

INSERT INTO customers
(customer_name, customer_phone_numbers, customers_email_id, city)
VALUES
-- === UNIQUE CUSTOMERS (40) ===
('Amit Sharma','9876543210','amit.sharma@gmail.com','Delhi'),
('Rohit Verma','9123456789','rohit.verma@gmail.com','Mumbai'),
('Neha Kulkarni','9823012345','neha.kulkarni@gmail.com','Pune'),
('Priya Iyer','9845011122','priya.iyer@gmail.com','Chennai'),
('Ankit Mehta','9811122233','ankit.mehta@gmail.com','Ahmedabad'),
('Sonal Patil','9765432109','sonal.patil@gmail.com','Pune'),
('Rahul Khanna','9898989898','rahul.khanna@gmail.com','Delhi'),
('Pooja Nair','9743214567','pooja.nair@gmail.com','Bangalore'),
('Vikas Malhotra','9810098100','vikas.malhotra@gmail.com','Delhi'),
('Sneha Joshi','9876123456','sneha.joshi@gmail.com','Mumbai'),
('Arjun Rao','9900112233','arjun.rao@gmail.com','Bangalore'),
('Karan Singh','9988776655','karan.singh@gmail.com','Delhi'),
('Ritika Bose','9830044556','ritika.bose@gmail.com','Kolkata'),
('Manish Gupta','9874501234','manish.gupta@gmail.com','Mumbai'),
('Anjali Deshpande','9822788899','anjali.d@gmail.com','Pune'),
('Suresh Reddy','9849012345','suresh.reddy@gmail.com','Hyderabad'),
('Nikhil Jain','9812345678','nikhil.jain@gmail.com','Indore'),
('Meera Shah','9723456789','meera.shah@gmail.com','Ahmedabad'),
('Akash Mishra','9801234567','akash.mishra@gmail.com','Delhi'),
('Divya Chawla','9815566778','divya.chawla@gmail.com','Chandigarh'),
('Sameer Khan','9890011223','sameer.khan@gmail.com','Mumbai'),
('Kavita Menon','9846001122','kavita.menon@gmail.com','Kochi'),
('Yash Agarwal','9831122233','yash.agarwal@gmail.com','Kolkata'),
('Rina Paul','9873344556','rina.paul@gmail.com','Kolkata'),
('Harish Arora','9818899001','harish.arora@gmail.com','Delhi'),
('Naina Kapoor','9812348899','naina.kapoor@gmail.com','Mumbai'),
('Prakash Pillai','9745012345','prakash.p@gmail.com','Trivandrum'),
('Ishaan Malviya','9887766554','ishaan.m@gmail.com','Indore'),
('Tanvi Kulkarni','9765009876','tanvi.k@gmail.com','Pune'),
('Deepak Soni','9829011223','deepak.soni@gmail.com','Jaipur'),
('Ravi Shankar','9866123456','ravi.shankar@gmail.com','Hyderabad'),
('Payal Ghosh','9836677889','payal.ghosh@gmail.com','Kolkata'),
('Naveen Shetty','9845123456','naveen.shetty@gmail.com','Bangalore'),
('Ayesha Khan','9892345678','ayesha.k@gmail.com','Mumbai'),
('Mohit Bansal','9814567890','mohit.b@gmail.com','Delhi'),
('Pankaj Tripathi','9809988776','pankaj.t@gmail.com','Patna'),
('Rohini Das','9833344455','rohini.d@gmail.com','Kolkata'),
('Siddharth Roy','9817788990','siddharth.roy@gmail.com','Delhi'),
('Kunal Oberoi','9891122334','kunal.oberoi@gmail.com','Mumbai'),
('Swati Kulkarni','9765123499','swati.k@gmail.com','Pune'),

-- === EXACT DUPLICATES (12) ===
('Amit Sharma','9876543210','amit.sharma@gmail.com','Delhi'),
('Neha Kulkarni','9823012345','neha.kulkarni@gmail.com','Pune'),
('Rahul Khanna','9898989898','rahul.khanna@gmail.com','Delhi'),
('Pooja Nair','9743214567','pooja.nair@gmail.com','Bangalore'),
('Manish Gupta','9874501234','manish.gupta@gmail.com','Mumbai'),
('Suresh Reddy','9849012345','suresh.reddy@gmail.com','Hyderabad'),
('Ritika Bose','9830044556','ritika.bose@gmail.com','Kolkata'),
('Akash Mishra','9801234567','akash.mishra@gmail.com','Delhi'),
('Meera Shah','9723456789','meera.shah@gmail.com','Ahmedabad'),
('Sameer Khan','9890011223','sameer.khan@gmail.com','Mumbai'),
('Karan Singh','9988776655','karan.singh@gmail.com','Delhi'),
('Sneha Joshi','9876123456','sneha.joshi@gmail.com','Mumbai'),

-- === SLIGHTLY ALTERED DUPLICATES (8) ===
('Amit Sharma','9876543211','amit.sharma+1@gmail.com','Delhi'),
('Neha Kulkarni','9823012345','neha.kulkarni@sample.edu','Pune'),
('Rahul Khanna','9898989899','rahul.khanna@gmail.com','Delhi'),
('Pooja Nair','9743214567','pooja.nair+promo@gmail.com','Bangalore'),
('Manish Gupta','9874501235','manish.gupta@gmail.com','Mumbai'),
('Suresh Reddy','9849012346','s.reddy@gmail.com','Hyderabad'),
('Ritika Bose','9830044557','ritika.b@gmail.com','Kolkata'),
('Akash Mishra','9801234568','akash.mishra@sample.edu','Delhi');





-- 9) ORDERS TABLE
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    store_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
) ENGINE=InnoDB;

-- INSERT THE DATA IN THE ORDERS TABLE.
INSERT INTO orders (customer_id, store_id, order_date) VALUES
(1,1,'2025-01-01'),(2,2,'2025-01-01'),(3,3,'2025-01-01'),
(4,1,'2025-01-02'),(5,2,'2025-01-02'),(6,3,'2025-01-02'),
(7,1,'2025-01-03'),(8,2,'2025-01-03'),(9,3,'2025-01-03'),
(10,1,'2025-01-04'),(11,2,'2025-01-04'),(12,3,'2025-01-04'),

(13,1,'2025-01-05'),(14,2,'2025-01-05'),(15,3,'2025-01-05'),
(16,1,'2025-01-06'),(17,2,'2025-01-06'),(18,3,'2025-01-06'),
(19,1,'2025-01-07'),(20,2,'2025-01-07'),(21,3,'2025-01-07'),

(22,1,'2025-01-08'),(23,2,'2025-01-08'),(24,3,'2025-01-08'),
(25,1,'2025-01-09'),(26,2,'2025-01-09'),(27,3,'2025-01-09'),
(28,1,'2025-01-10'),(29,2,'2025-01-10'),(30,3,'2025-01-10'),

(31,1,'2025-02-01'),(32,2,'2025-02-01'),(33,3,'2025-02-01'),
(34,1,'2025-02-02'),(35,2,'2025-02-02'),(36,3,'2025-02-02'),
(37,1,'2025-02-03'),(38,2,'2025-02-03'),(39,3,'2025-02-03'),

(40,1,'2025-02-04'),(41,2,'2025-02-04'),(42,3,'2025-02-04'),
(43,1,'2025-02-05'),(44,2,'2025-02-05'),(45,3,'2025-02-05'),

(46,1,'2025-03-01'),(47,2,'2025-03-01'),(48,3,'2025-03-01'),
(49,1,'2025-03-02'),(50,2,'2025-03-02'),(51,3,'2025-03-02'),

(52,1,'2025-03-03'),(53,2,'2025-03-03'),(54,3,'2025-03-03'),
(55,1,'2025-03-04'),(56,2,'2025-03-04'),(57,3,'2025-03-04'),

(58,1,'2025-03-05'),(59,2,'2025-03-05'),(60,3,'2025-03-05'),

(61,1,'2025-04-01'),(62,2,'2025-04-01'),(63,3,'2025-04-01'),
(64,1,'2025-04-02'),(65,2,'2025-04-02'),(66,3,'2025-04-02'),

(67,1,'2025-04-03'),(68,2,'2025-04-03'),(69,3,'2025-04-03'),
(70,1,'2025-04-04'),(71,2,'2025-04-04'),(72,3,'2025-04-04'),

(73,1,'2025-04-05'),(74,2,'2025-04-05'),(75,3,'2025-04-05');

SELECT MIN(customer_id), MAX(customer_id) FROM CUSTOMERS;

-- 10) ORDERS ITEMS TABLE
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
) ENGINE=InnoDB;

-- INSERTING THE DATA IN THE ORDERS ITEMS TABLE.

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(244,1,3),(244,5,2),(244,10,1),
(245,2,1),(245,6,4),(245,11,2),
(246,3,2),(246,7,3),(246,12,1),
(247,4,1),(247,8,2),(247,13,3),
(248,5,2),(248,9,1),(248,14,2),
(249,6,3),(249,10,1),(249,15,2),
(250,7,2),(250,11,3),(250,16,1),
(251,8,1),(251,12,2),(251,17,3),
(252,9,2),(252,13,1),(252,18,2),
(253,10,3),(253,14,2),(253,19,1),
(254,1,2),(254,5,1),(254,10,3),
(255,2,1),(255,6,2),(255,11,1),
(256,3,2),(256,7,1),(256,12,2),
(257,4,3),(257,8,1),(257,13,2),
(258,5,1),(258,9,2),(258,14,3),
(259,6,2),(259,10,1),(259,15,2),
(260,7,1),(260,11,2),(260,16,1),
(261,8,3),(261,12,1),(261,17,2),
(262,9,2),(262,13,1),(262,18,3),
(263,10,1),(263,14,2),(263,19,1),
(264,1,2),(264,5,3),(264,10,1),
(265,2,1),(265,6,2),(265,11,3),
(266,3,1),(266,7,2),(266,12,1),
(267,4,2),(267,8,1),(267,13,2),
(268,5,3),(268,9,1),(268,14,2),
(269,6,2),(269,10,3),(269,15,1),
(270,7,1),(270,11,2),(270,16,3),
(271,8,2),(271,12,1),(271,17,2),
(272,9,1),(272,13,3),(272,18,2),
(273,10,2),(273,14,1),(273,19,3),
(274,1,1),(274,5,2),(274,10,1),
(275,2,3),(275,6,1),(275,11,2),
(276,3,2),(276,7,1),(276,12,3),
(277,4,1),(277,8,2),(277,13,1),
(278,5,2),(278,9,1),(278,14,3),
(279,6,1),(279,10,2),(279,15,1),
(280,7,2),(280,11,3),(280,16,2),
(281,8,1),(281,12,2),(281,17,1),
(282,9,3),(282,13,1),(282,18,2),
(283,10,2),(283,14,1),(283,19,2),
(284,1,3),(284,5,2),(284,10,1),
(285,2,1),(285,6,3),(285,11,2),
(286,3,2),(286,7,1),(286,12,3),
(287,4,1),(287,8,2),(287,13,1),
(288,5,2),(288,9,3),(288,14,1),
(289,6,1),(289,10,2),(289,15,3),
(290,7,2),(290,11,1),(290,16,2),
(291,8,1),(291,12,3),(291,17,2),
(292,9,2),(292,13,1),(292,18,3),
(293,10,1),(293,14,2),(293,19,1),
(294,1,2),(294,5,1),(294,10,3),
(295,2,3),(295,6,1),(295,11,2),
(296,3,2),(296,7,1),(296,12,2),
(297,4,1),(297,8,2),(297,13,3),
(298,5,1),(298,9,2),(298,14,1),
(299,6,2),(299,10,3),(299,15,1),
(300,7,1),(300,11,2),(300,16,3),
(301,8,2),(301,12,1),(301,17,2),
(302,9,1),(302,13,2),(302,18,1),
(303,10,3),(303,14,1),(303,19,2),
(304,1,2),(304,5,1),(304,10,3),
(305,2,1),(305,6,2),(305,11,1),
(306,3,2),(306,7,1),(306,12,2),
(307,4,3),(307,8,1),(307,13,2),
(308,5,1),(308,9,2),(308,14,3),
(309,6,2),(309,10,1),(309,15,2),
(310,7,1),(310,11,2),(310,16,1),
(311,8,3),(311,12,1),(311,17,2),
(312,9,2),(312,13,1),(312,18,3),
(313,10,1),(313,14,2),(313,19,1),
(314,1,2),(314,5,3),(314,10,1),
(315,2,1),(315,6,2),(315,11,3),
(316,3,1),(316,7,2),(316,12,1),
(317,4,2),(317,8,1),(317,13,2),
(318,5,3),(318,9,1),(318,14,2);

show tables; 




       



       
       






