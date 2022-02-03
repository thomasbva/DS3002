-- 1
SELECT product_name, quantity_per_unit from products;

-- 2
SELECT product_name, id from products
WHERE discontinued != 1;

-- 3
SELECT product_name from products
WHERE discontinued = 1;


-- 4
SELECT product_name, list_price 
FROM products 
ORDER BY list_price DESC;

-- 5
SELECT id, product_name, list_price from products
WHERE list_price < 20;

-- 6
SELECT id, product_name, list_price from products
WHERE list_price BETWEEN 15 AND 25;

-- 7
SELECT product_name, list_price FROM Products
WHERE list_price > (SELECT avg(list_price) FROM Products)
ORDER BY list_price;

-- 8
SELECT product_name, list_price
FROM products
WHERE 10 >= (SELECT COUNT(list_price)
                    FROM products as b
                    WHERE b.list_price >= products.list_price)
ORDER BY list_price desc;

-- 9
SELECT COUNT(discontinued = 1 or discontinued = 0) product_name FROM products;

-- 10
SELECT product_name, quantity_per_unit FROM products;




