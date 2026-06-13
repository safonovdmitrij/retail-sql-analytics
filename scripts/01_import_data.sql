COPY categories(category_id, category_name)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/categories.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

COPY promotions(promotion_id, discount)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/promotions.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

COPY suppliers(supplier_id, country)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/suppliers.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

COPY stores(store_id, city)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/stores.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

COPY customers(customer_id, city, signup_date)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/customers.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

COPY employees(employee_id, store_id, salary)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/employees.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

COPY products(product_id, category_id, supplier_id, price)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/products.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

COPY orders(order_id, customer_id, store_id, order_date, promotion_id)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/orders.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

COPY order_items(order_item_id, order_id, product_id, qty, price)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/order_items.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

COPY payments(payment_id, order_id, amount)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/payments.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

COPY returns(return_id, order_item_id, refund)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/returns.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

COPY shipments(shipment_id, order_id, status)
FROM 'D:/retail-sql-analytics/retail-sql-analytics/data/raw/shipments.csv'
WITH(
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

