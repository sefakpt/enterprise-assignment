SELECT c.category_type, SUM(od.quantity * od.unit_price) AS total_revenue 
FROM order_details od 
LEFT JOIN products p ON od.products_ID = p.product_ID 
LEFT JOIN categories c ON p.category_ID = c.category_ID 
LEFT JOIN orders o ON od.order_ID = o.order_ID
WHERE o.orderdate >= NOW() - INTERVAL 1 YEAR
GROUP BY c.category_type 
ORDER BY total_revenue DESC 
LIMIT 0, 1000;