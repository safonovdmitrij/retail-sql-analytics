-- Amount of rows in each table
SELECT 'categories' AS table_name, COUNT(*) AS row_count
FROM categories
UNION ALL
SELECT 'customers', COUNT(*) FROM customers
UNION ALL 
SELECT 'employees', COUNT(*) FROM employees
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL 
SELECT 'orders', count(*) FROM orders
UNION ALL
SELECT 'payments', COUNT(*) FROM payments
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'promotions', COUNT(*) FROM promotions
UNION ALL
SELECT 'returns', COUNT(*) FROM returns
UNION ALL 
SELECT 'shipments', COUNT(*) FROM shipments
UNION ALL
SELECT 'stores', COUNT(*) FROM stores
UNION ALL
SELECT 'suppliers', COUNT(*) FROM suppliers
ORDER BY row_count ASC;

-- Check missing foreign key references
SELECT 'orders -> customers' AS relationship, COUNT(*) AS missing_rows
FROM orders 
LEFT JOIN customers 
ON orders.customer_id = customers.customer_id
WHERE customers.customer_id IS NULL 

UNION ALL

SELECT 'orders -> stores', COUNT(*)
FROM orders AS o
LEFT JOIN stores AS s
ON o.store_id = s.store_id
WHERE s.store_id IS NULL

UNION ALL

SELECT 'orders -> promotions', COUNT(*)
FROM orders AS o
LEFT JOIN promotions AS p
ON o.promotion_id = p.promotion_id
WHERE p.promotion_id IS NULL

UNION ALL 

SELECT 'employees -> stores', COUNT(*)
FROM employees AS e
LEFT JOIN stores AS s
ON e.store_id = s.store_id
WHERE s.store_id IS NULL

UNION ALL

SELECT 'order_items -> orders', COUNT(*)
FROM order_items AS oi
LEFT JOIN orders AS o
ON oi.order_id = o.order_id
WHERE o.order_id IS NULL

UNION ALL

SELECT 'shipments -> orders', COUNT(*)
FROM shipments AS s
LEFT JOIN orders AS o
ON s.order_id = o.order_id 
WHERE o.order_id IS NULL

UNION ALL

SELECT 'payments -> orders', COUNT(*)
FROM payments AS p
LEFT JOIN orders AS o
ON p.order_id = o.order_id
WHERE o.order_id IS NULL

UNION ALL 

SELECT 'returns -> order_items', COUNT(*)
FROM returns AS r
LEFT JOIN order_items AS oi
ON r.order_item_id = oi.order_item_id
WHERE oi.order_item_id IS NULL

UNION ALL 

SELECT 'order_items -> products', COUNT(*) 
FROM order_items AS oi
LEFT JOIN products AS p
ON oi.product_id = p.product_id
WHERE p.product_id IS NULL

UNION ALL 

SELECT 'products -> categories', COUNT(*)
FROM products AS p
LEFT JOIN categories AS c
ON p.category_id = c.category_id
WHERE c.category_id IS NULL

UNION ALL

SELECT 'products -> suppliers', COUNT(*)
FROM products AS p
LEFT JOIN suppliers AS s
ON p.supplier_id = s.supplier_id
WHERE s.supplier_id IS NULL

ORDER BY relationship ASC;

-- Check invalid numeric values
SELECT 'invalid_order_item_qty' AS check_name, COUNT(*) AS invalid_rows
FROM order_items
WHERE qty <= 0

UNION ALL

SELECT 'invalid_order_item_price', COUNT(*)
FROM order_items
WHERE price <= 0

UNION ALL

SELECT 'invalid_payment_amount', COUNT(*)
FROM payments
WHERE amount < 0 

UNION ALL 

SELECT 'invalid_product_price', COUNT(*)
FROM products
WHERE price <= 0

UNION ALL

SELECT 'invalid_refund', COUNT(*)
FROM returns
WHERE refund < 0

UNION ALL

SELECT 'invalid_discount', COUNT(*)
FROM promotions
WHERE discount < 0;