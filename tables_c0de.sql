create database pizza_ordering_database;
use pizza_ordering_database;

CREATE TABLE Customer (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(45),
  middle_name VARCHAR(45),
  last_name VARCHAR(45),
  title VARCHAR(45),
  telephone_number VARCHAR(45),
  address VARCHAR(45)
);

CREATE TABLE Employee (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(45),
  middle_name VARCHAR(45),
  last_name VARCHAR(45),
  address VARCHAR(45),
  telephone_number VARCHAR(45),
  salary int(10)
);

CREATE TABLE order_ (
  order_id INT PRIMARY KEY,
  order_date DATE,
  order_time TIME,
  customer_id INT,
  employee_id INT,
  driver_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (driver_id) REFERENCES Driver(driver_id)
);

CREATE TABLE Driver (
  driver_id INT PRIMARY KEY,
  name VARCHAR(45),
  telephone_number VARCHAR(20),
  hourly_salary INT(10)
);

CREATE TABLE Menu_Item (
  menu_number INT PRIMARY KEY,
  name VARCHAR(45),
  description VARCHAR(100),
  menu_price INT(10),
  customer_special_requests VARCHAR(100)
);

CREATE TABLE Line_Item (
  line_number INT PRIMARY KEY,
  quantity INT(10),
  sale_price INT(10),
  order_id INT(10),
  menu_number INT(10),
  FOREIGN KEY (order_id) REFERENCES Order_(order_id),
  FOREIGN KEY (menu_number) REFERENCES Menu_Item(menu_number)
);

CREATE TABLE Standard_Item (
  menu_number INT PRIMARY KEY,
  portion_size VARCHAR(45),
FOREIGN KEY (menu_number) 
REFERENCES Menu_Item(menu_number)
);

CREATE TABLE Custom_Pizza (
  menu_number INT PRIMARY KEY,
  pizza_diameter INT,
  crust_type VARCHAR(45),
  crust_flavor VARCHAR(45),
  FOREIGN KEY (menu_number) REFERENCES Menu_Item(menu_number)
);

CREATE TABLE Topping (
  topping_type VARCHAR(45) PRIMARY KEY,
  pizza_diameter INT(10),
  price INT(10)
);



	