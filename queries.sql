SELECT *
FROM order_
WHERE YEAR(order_date) = 2023
AND driver_id < 200;


SELECT Standard_Item, COUNT(*) AS order_count
FROM order_
WHERE YEAR(order_date) = 2023
GROUP BY standard_item
ORDER BY order_id DESC
LIMIT 1;


SELECT first_name, COUNT(*) AS order_id
FROM order_
JOIN employee ON order_.employee_id = employee.employee_id
GROUP BY first_name
ORDER BY order_id DESC
LIMIT 1;

SELECT customer.first_name, AVG(order_.order_id) AS average_order_id
FROM order_
JOIN customer ON order_.customer_id = customer.customer_id
GROUP BY customer.first_name;


SELECT Topping, COUNT(*) AS topping_type
FROM order_
JOIN custom_pizza ON order_.order_id = custom_pizza.order_id
WHERE YEAR(order_date) = 2022
GROUP BY topping
ORDER BY topping_type DESC
LIMIT 1;