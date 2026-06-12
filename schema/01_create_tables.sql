CREATE TABLE categories(
    category_id INTEGER PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE promotions(
    promotion_id INTEGER PRIMARY KEY,
    discount INTEGER NOT NULL
);

CREATE TABLE suppliers(
    supplier_id INTEGER PRIMARY KEY,
    country VARCHAR(100) NOT NULL
);

CREATE TABLE stores(
    store_id INTEGER PRIMARY KEY,
    city VARCHAR(100) NOT NULL
);

CREATE TABLE customers(
    customer_id INTEGER PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    signup_date DATE NOT NULL
);

CREATE TABLE employees(
    employee_id INTEGER PRIMARY KEY,
    store_id INTEGER NOT NULL,
    salary NUMERIC(10, 2) NOT NULL
);

CREATE TABLE products(
    product_id INTEGER PRIMARY KEY,
    category_id INTEGER NOT NULL,
    supplier_id INTEGER NOT NULL,
    price NUMERIC(10, 2) NOT NULL
);

CREATE TABLE orders(
    order_id INTEGER PRIMARY KEY, 
    customer_id INTEGER NOT NULL,
    store_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    promotion_id INTEGER
);

CREATE TABLE order_items(
    order_item_id INTEGER PRIMARY KEY, 
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    qty INTEGER NOT NULL,
    price NUMERIC(10, 2) NOT NULL
);

CREATE TABLE payments(
    payment_id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
    amount NUMERIC(10, 2) NOT NULL
);

CREATE TABLE returns(
    return_id INTEGER PRIMARY KEY, 
    order_item_id INTEGER NOT NULL, 
    refund NUMERIC(10, 2) NOT NULL
);

CREATE TABLE shipments(
    shipment_id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
    status VARCHAR(100) NOT NULL
);