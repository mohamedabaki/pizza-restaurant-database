-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    MiddleName VARCHAR(50),
    LastName VARCHAR(50),
    Title VARCHAR(50),
    Telephone VARCHAR(20),
    Address VARCHAR(100)
);

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    MiddleName VARCHAR(50),
    LastName VARCHAR(50),
    Address VARCHAR(100),
    Telephone VARCHAR(20),
    Salary DECIMAL(10,2)
);

-- Create Drivers table
CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY,
    Name VARCHAR(50),
    Telephone VARCHAR(20),
    HourlySalary DECIMAL(10,2)
);

-- Create MenuItems table
CREATE TABLE MenuItems (
    MenuNumber INT PRIMARY KEY,
    Name VARCHAR(50),
    Description VARCHAR(255),
    MenuPrice DECIMAL(10,2),
    Custom BIT
);

-- Create StandardItems table
CREATE TABLE StandardItems (
    MenuItemID INT PRIMARY KEY,
    PortionSize VARCHAR(50),
    FOREIGN KEY (MenuItemID) REFERENCES MenuItems(MenuNumber)
);

-- Create CustomPizzas table
CREATE TABLE CustomPizzas (
    MenuItemID INT PRIMARY KEY,
    PizzaDiameter INT,
    CrustType VARCHAR(50),
    Flavor VARCHAR(50),
    FOREIGN KEY (MenuItemID) REFERENCES MenuItems(MenuNumber)
);

-- Create Toppings table
CREATE TABLE Toppings (
    ToppingType VARCHAR(50),
    Diameter INT,
    Price DECIMAL(10,2),
    PRIMARY KEY (ToppingType, Diameter)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    OrderTime TIME,
    CustomerID INT,
    EmployeeID INT,
    DriverID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);

-- Create LineItems table
CREATE TABLE LineItems (
    OrderID INT,
    LineNumber INT,
    Quantity INT,
    SalePrice DECIMAL(10,2),
    MenuNumber INT,
    PRIMARY KEY (OrderID, LineNumber),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (MenuNumber) REFERENCES MenuItems(MenuNumber)
);

-- Insert sample data into Customers table
INSERT INTO Customers (CustomerID, FirstName, MiddleName, LastName, Title, Telephone, Address)
(1, '', 'Smith', 'lol', 'Mr.', '1234567890', '123 qahr St'),
(2, 'Emma', 'Grace', 'Johnson', '79 mesi str', '55599988', '22 str'),
(5, 'abaki', '', 'mo', 'son', '1112223452','22 str streve'),
(4, 'Emily', 'Grace', 'Davis', 'Miss', '9998887777', '321 Pine Rd');

-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, FirstName, MiddleName, LastName, Address, Telephone, Salary)
(1, 'abkhleq', 'mohamed', 'sayed', '789 Oak Ave', '5551234567', 5000.00),
(2, 'lil', 'saye', 'Wilson', '456 Elm St', '9876543210', 6000.00),
(3, 'shreef', 'Rost', 'mohamed', '123 Main St', '1234567890', 5500.00),
(4, 'skyla', 'sam', 'Taylor', '231 str ad', '9998887777', 5200.00);

-- Insert sample data into Drivers table
INSERT INTO Driver (DriverID, Name, Telephone, HourlySalary)
VALUES
(1, 'Mark Johnson', '5551234567', 15.50),
(2, 'Laura Thompson', '9876543210', 14.00),
(3, 'Brian Davis', '1234567890', 16.75),
(4, 'Emma Wilson', '9998887777', 17.25);