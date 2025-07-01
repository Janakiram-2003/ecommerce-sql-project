-- Total Revenue
SELECT SUM(P.price * OD.quantity) AS total_revenue
FROM OrderDetails OD
JOIN Products P ON OD.product_id = P.product_id;

-- Monthly Revenue
SELECT MONTH(O.order_date) AS month,
       SUM(P.price * OD.quantity) AS monthly_revenue
FROM Orders O
JOIN OrderDetails OD ON O.order_id = OD.order_id
JOIN Products P ON OD.product_id = P.product_id
GROUP BY MONTH(O.order_date)
ORDER BY month;

-- Top Selling Products
SELECT P.name, SUM(OD.quantity) AS total_sold
FROM OrderDetails OD
JOIN Products P ON OD.product_id = P.product_id
GROUP BY P.name
ORDER BY total_sold DESC;

-- Customer Lifetime Value
SELECT C.name, SUM(P.price * OD.quantity) AS lifetime_value
FROM Customers C
JOIN Orders O ON C.customer_id = O.customer_id
JOIN OrderDetails OD ON O.order_id = OD.order_id
JOIN Products P ON OD.product_id = P.product_id
GROUP BY C.name
ORDER BY lifetime_value DESC;

-- Revenue by Category
SELECT P.category, SUM(P.price * OD.quantity) AS category_revenue
FROM Products P
JOIN OrderDetails OD ON P.product_id = OD.product_id
GROUP BY P.category
ORDER BY category_revenue DESC;
