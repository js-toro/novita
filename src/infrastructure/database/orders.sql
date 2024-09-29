CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT,
    cycle INT NOT NULL,
    isPaid BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (customerId) REFERENCES customers(id)
);

-- GET.
--- Obtener todas las ordenes y su cliente
SELECT
    *
FROM
    orders
    INNER JOIN customers ON orders.customerId = customers.id;

--- Obtener ordenes por cliente
SELECT
    *
FROM
    orders
    INNER JOIN customers ON orders.customerId = customers.id;

WHERE
    customerId = 1;

-- POST. 
--- Crear orden
INSERT INTO
    orders (customerId, cycle)
VALUES
    (1, 1),
    (2, 1),
    (3, 1);

-- PUT. 
--- Editar campos de ciclo y isPad de una orden
UPDATE
    orders
SET
    cycle = 2,
    isPaid = TRUE
WHERE
    id = 1;

-- DELETE.
--- Eliminar orden
DELETE FROM
    orders
WHERE
    id = 1;