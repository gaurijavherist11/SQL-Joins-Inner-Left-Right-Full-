use gauridb1;
SELECT * FROM Customers;
SELECT * FROM  Products;
SELECT * FROM  Orders;
SELECT * FROM  Payments;
SELECT * FROM OrderItems;
--  1. Customers and Their Orders (INNER JOIN)
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

--  2. Orders and Their Payments (INNER JOIN)
SELECT o.order_id, o.order_date, p.amount_paid, p.payment_date
FROM orders o
INNER JOIN payments p ON  p.order_id = o.order_id;

-- 3.. Order Items and Product Details
SELECT oi.order_id, p.product_name, oi.quantity, p.price
FROM OrderItems oi
INNER JOIN Products p ON oi.product_id = p.product_id;

-- 4. Total Amount per Order (Using Aggregation and GROUP BY)
SELECT order_id, SUM(amount_paid) AS total_payment
FROM Payments
GROUP BY order_id;

-- 5. Total Quantity Sold per Product
SELECT product_id, SUM(quantity) AS total_quantity
FROM OrderItems
GROUP BY product_id;

-- 6. Customers Who Paid More Than ₹30,000 (HAVING clause)
SELECT o.customer_id, SUM(p.amount_paid) AS total_paid
FROM Payments p
JOIN Orders o ON p.order_id = o.order_id
GROUP BY o.customer_id
HAVING total_paid > 30000;

-- 7. All Customers Including Those Without Orders (LEFT JOIN)
SELECT c.customer_id, c.name, o.order_id
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- 8. Orders Without Payments Yet (RIGHT JOIN)
SELECT o.order_id, p.payment_id
FROM Payments p
RIGHT JOIN Orders o ON p.order_id = o.order_id
WHERE p.payment_id IS NULL;

-- 9. Simulated FULL JOIN Between Customers and Orders (Using UNION)
SELECT c.customer_id, c.name, o.order_id
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id

UNION

SELECT c.customer_id, c.name, o.order_id
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- 10. Count of Orders per City
SELECT c.city, COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.city;
