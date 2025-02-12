SELECT customerID FROM orders
INTERSECT
SELECT customerid FROM reviews WHERE ratings IN (4, 5);