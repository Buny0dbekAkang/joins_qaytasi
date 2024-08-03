                           --1--
SELECT *
FROM customers c
JOIN orders o USING(customer_id)
JOIN employees e USING(employee_id)
JOIN shippers sh ON sh.shipper_id = o.ship_via
WHERE c.city = 'London' AND e.city = 'London' AND sh.company_name = 'Speedy Express';


                           --2--
SELECT pro.product_name, pro.quantity_per_unit, pro.discontinued, sp.contact_name, sp.phone
FROM products AS pro
FULL OUTER JOIN suppliers AS sp USING(supplier_id)
WHERE pro.category_id = 8 OR pro.category_id = 1 AND pro.discontinued = 1;


                          --3--
SELECT cs.contact_name,order_id
FROM customers AS cs
FULL OUTER JOIN orders AS o ON cs.customer_id = o.customer_id
WHERE o.order_id IS NULL;


                            --4-- 
                           ----LEFT----
SELECT cs.contact_name,order_id
FROM customers AS cs
LEFT JOIN orders AS o ON cs.customer_id = o.customer_id
WHERE o.order_id IS NULL;

                        ----RIGHT
SELECT cs.contact_name,order_id
FROM orders AS o
RIGHT JOIN customers AS cs ON o.customer_id = cs.customer_id
WHERE o.order_id IS NULL;