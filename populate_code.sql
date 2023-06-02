INSERT INTO Customer (customer_id, first_name, middle_name, last_name, title, telephone_number, address)
VALUES
(1, '', 'Smith', 'lol', 'Mr.', '1234567890', '123 qahr St'),
(2, 'Emma', 'Grace', 'Johnson', '79 mesi str', '55599988', '22 str'),
(5, 'abaki', '', 'mo', 'son', '1112223452','22 str streve'),
(4, 'Emily', 'Grace', 'Davis', 'Miss', '9998887777', '321 Pine Rd');

INSERT INTO Employee (employee_id, first_name, middle_name, last_name, address, telephone_number, salary)
VALUES
(1, 'abkhleq', 'mohamed', 'sayed', '789 Oak Ave', '5551234567', 5000.00),
(2, 'lil', 'saye', 'Wilson', '456 Elm St', '9876543210', 6000.00),
(3, 'shreef', 'Rost', 'mohamed', '123 Main St', '1234567890', 5500.00),
(4, 'skyla', 'sam', 'Taylor', '231 str ad', '9998887777', 5200.00);

INSERT INTO order_ (order_id, order_date, order_time, customer_id, employee_id, driver_id)
VALUES
(1, '2023-05-24', '12:30:00', 1, 1, 1),
(2, '2023-05-24', '18:45:00', 2, 2, 2),
(3, '2023-05-23', '20:15:00', 3, 3, 3),
(4, '2023-05-23', '19:00:00', 4, 4, 4);

INSERT INTO Driver (driver_id, name, telephone_number, hourly_salary)
VALUES
(1, 'Mark Johnson', '5551234567', 15.50),
(2, 'Laura Thompson', '9876543210', 14.00),
(3, 'Brian Davis', '1234567890', 16.75),
(4, 'Emma Wilson', '9998887777', 17.25);

INSERT INTO Menu_Item (menu_number, name, description, menu_price, customer_special_requests)
VALUES
(1, 'Margherita Pizza', 'Classic tomato and mozzarella pizza', 10.99, ''),
(2, 'Pepperoni Pizza', 'Delicious pepperoni topped pizza', 12.99, ''),
(3, 'Vegetarian Pizza', 'Assorted fresh vegetables on a pizza', 11.99, ''),
(4, 'BBQ Chicken Pizza', 'Tangy barbecue sauce and grilled chicken pizza', 13.99, '');

INSERT INTO Line_Item (line_number, quantity, sale_price, order_id, menu_number)
VALUES
(1, 2, 21.98, 1, 1),
(2, 1, 12.99, 2, 2),
(3, 3, 35.97, 3, 3),
(4, 2, 27.98, 4, 4);

INSERT INTO Standard_Item (menu_number, portion_size)
VALUES
(1, 'Regular'),
(2, 'Regular'),
(3, 'Regular'),
(4, 'Large');

INSERT INTO Custom_Pizza (menu_number, pizza_diameter, crust_type, crust_flavor)
VALUES
(5, 12, 'Thin', 'Plain'),
(6, 14, 'Thick', 'Garlic'),
(7, 10, 'Regular', 'Herb'),
(8, 16, 'Thin', 'Cheese Stuffed');

INSERT INTO Topping (topping_type, pizza_diameter, price)
VALUES
('Pepperoni', 12, 1.50),
('Mushrooms', 12, 1.25),
('Onions', 12, 0.75),
('Bell Peppers', 12, 0.90),
('Ham', 14, 1.75),
('Olives', 14, 1.00),
('Spinach', 14, 1.25),
('Jalapenos', 14, 1.10),
('Tomatoes', 10, 0.50),
('Pineapple', 10, 1.25),
('Bacon', 10, 1.50),
('Chicken', 10, 1.75),
('Sausage', 16, 2.00),
('Extra Cheese', 16, 1.50),
('Artichokes', 16, 2.25),
('Basil', 16, 0.75);
	