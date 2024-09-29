CREATE TABLE orderItems (
    id INT AUTO_INCREMENT PRIMARY KEY,
    orderId INT,
    productName VARCHAR(255) NOT NULL,
    productCode VARCHAR(100) NOT NULL,
    productPrice DECIMAL(10, 2) NOT NULL,
    isPaid BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (orderId) REFERENCES orders(id)
);

-- GET. 
--- Obtener items de orden, y añadir informacion de cliente
SELECT
    orderItems.*,
    customers.name AS customerName
FROM
    orderItems
    INNER JOIN orders ON orderItems.orderId = orders.id
    INNER JOIN customers ON orders.customerId = customers.id
WHERE
    customers.id = 1;

-- POST. 
--- Crear items de orden
INSERT INTO
    orderItems (orderId, productName, productCode, productPrice)
VALUES
    (1, 'Producto 1', 'CODE1', 10.00),
    (1, 'Producto 2', 'CODE2', 20.00),
    (2, 'Producto 3', 'CODE3', 15.00),
    (3, 'Producto 4', 'CODE4', 25.00);

-- DELETE.
--- Eliminar item de orden
DELETE FROM
    orderItems
WHERE
    id = 2;