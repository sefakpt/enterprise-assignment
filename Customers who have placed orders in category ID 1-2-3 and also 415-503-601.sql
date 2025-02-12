SELECT DISTINCT o.customerID
FROM orders o
INNER JOIN order_details od ON o.order_ID = od.order_ID
INNER JOIN products p ON od.products_ID = p.product_ID
WHERE p.category_ID IN (1, 2, 3)

UNION

SELECT DISTINCT o.customerID
FROM orders o
INNER JOIN order_details od ON o.order_ID = od.order_ID
INNER JOIN products p ON od.products_ID = p.product_ID
WHERE p.category_ID IN (415, 503, 601);
