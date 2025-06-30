# SQL-Joins-Inner-Left-Right-Full-

# 📦 SQL JOINs Demonstration — Relational Database Project

This project demonstrates how to use different types of SQL `JOIN` operations to merge and analyze related data across multiple tables in a relational database.

## 📚 Database Structure

The database consists of the following tables:

- **Customers** – Stores customer details.
- **Orders** – Records customer orders.
- **Payments** – Tracks payments for orders.
- **Products** – Contains information about products.
- **OrderItems** – Associates products with orders (line items).

Each table is linked through primary and foreign keys, forming meaningful relationships that allow data to be joined and analyzed.

---

## 🔗 JOIN Operations Used

### 1. INNER JOIN

Used to retrieve records that have matching values in both tables. For example:
- Customers who have placed orders
- Orders that have corresponding payment records
- Order items along with product details

### 2. LEFT JOIN

Used to retrieve all records from the left table, and the matched records from the right table. Unmatched right-side entries return as NULL. Example:
- All customers, including those who haven’t placed any orders
- All products, even if they were never ordered

### 3. RIGHT JOIN

Used to retrieve all records from the right table, and the matched ones from the left table. Example:
- All orders, even if a payment hasn’t been recorded yet

### 4. FULL OUTER JOIN (Simulated)

Since MySQL doesn't support FULL JOIN directly, it is simulated using `UNION` between LEFT JOIN and RIGHT JOIN queries. It helps combine:
- All customers and all orders, whether or not they are linked

This demonstrates practical SQL skills useful for real-world applications like e-commerce, billing, customer analytics, and inventory systems.

---


