-- Question 1: Achieving 1NF (First Normal Form)

-- Step 1: create table which will hold the productDetails
CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(100)
);
--step 2:insert values to table productDetails
INSERT INTO ProductDetail(OrderID, CustomerName, Products)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- Question 2: Achieving 2NF (Second Normal Form)

-- Step 1: create table which will hold the orders
 CREATE TABLE orders(
OrderID INT PRIMARY KEY,
customerName VARCHAR(100)
);
-- Step 2: Insert data into the orders table
INSERT INTO orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');
--step 3:create a table namely product with a foreign key referencing to the orders table thats means that the product table foreign key should be match what
-- we have in the orders else we get error
-- Product  table 
CREATE TABLE product(
product_id INT primary key,
productName varchar(100),
quantity INT,
order_id INT,
foreign key(order_id) references orders(OrderID)
);
--step 4:insert values to table product
insert into product(product_id,productName,quantity,order_id)
values 
(1,'laptop',2,101),
(2,'Mouse',1,101),
(3,'Tablet',3,102),
(4,'Keyboard',2,102),
(5,'Mouse',1,102),
(6,'Phone',1,103);



