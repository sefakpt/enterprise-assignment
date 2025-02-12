SELECT p.product_name, SUM(od.quantity) AS total_sales 
FROM order_details od 
INNER JOIN products p 
ON od.products_ID = p.product_ID
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 10;