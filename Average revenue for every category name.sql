SELECT c.category_name, AVG(od.quantity * od.unit_price) AS avg_revenue
FROM order_details od
INNER JOIN products p ON od.products_ID = p.product_ID
INNER JOIN categories c ON p.category_ID = c.category_ID
GROUP BY c.category_name;