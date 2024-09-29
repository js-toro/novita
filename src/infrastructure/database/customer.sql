CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    goodstanding BOOLEAN DEFAULT FALSE,
    debt DECIMAL(10, 2) NOT NULL
);

-- GET.
--- Obtener todos los clientes
SELECT
    *
FROM
    customers;

-- Obtener un cliente
SELECT
    *
FROM
    customers
WHERE
    id = 1;

-- POST. 
--- Crear cliente
INSERT INTO
    customers (name, goodstanding, debt)
VALUES
    ('La Pepa', TRUE, 0),
    ('Camilo Hijo', TRUE, 0),
    ('Jose Hijo', TRUE, 0);

-- PUT.
-- Actualizar estado del cliente
UPDATE
    customers
SET
    goodstanding = FALSE,
    debt = 1000
WHERE
    id = 1;

-- DELETE.
-- Eliminar cliente
DELETE FROM
    customers
WHERE
    id = 1;