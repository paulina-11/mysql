-- renombrar tablas
ALTER TABLE usuarios RENAME TO users;

-- cambiar nombre de columna
ALTER TABLE usuarios CHANGE direccion dir VARCHAR(50);

-- agregar columnas
ALTER TABLE usuarios ADD edad INT NOT NULL;

-- BORRAR COLUMNAS

ALTER TABLE usuarios DROP edad;