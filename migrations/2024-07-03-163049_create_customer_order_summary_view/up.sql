-- Your SQL goes here
CREATE VIEW customer_order_summary AS
SELECT 
    c.customer_name,
    SUM(oi.quantity * oi.price_per_item) AS total_spent,
    COUNT(DISTINCT o.order_id) AS order_count
FROM 
    customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
WHERE 
    p.category = 'Electronics' 
    AND strftime('%Y', o.order_date) = strftime('%Y', 'now')
GROUP BY 
    c.customer_id;
