ALTER TABLE employees
ADD CONSTRAINT fk_employees_store
FOREIGN KEY (store_id)
REFERENCES stores(store_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_stores
FOREIGN KEY (store_id)
REFERENCES stores(store_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_promotions
FOREIGN KEY (promotion_id)
REFERENCES promotions(promotion_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_orders
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_products
FOREIGN KEY (product_id)
REFERENCES products(product_id);

ALTER TABLE returns
ADD CONSTRAINT fk_returns_order_items
FOREIGN KEY (order_item_id)
REFERENCES order_items(order_item_id);

ALTER TABLE products
ADD CONSTRAINT fk_products_categories
FOREIGN KEY (category_id)
REFERENCES categories(category_id);

ALTER TABLE products
ADD CONSTRAINT fk_products_suppliers
FOREIGN KEY (supplier_id)
REFERENCES suppliers(supplier_id);

ALTER TABLE shipments
ADD CONSTRAINT fk_shipments_orders
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE payments
ADD CONSTRAINT fk_payments_orders
FOREIGN KEY (order_id)
REFERENCES orders(order_id);