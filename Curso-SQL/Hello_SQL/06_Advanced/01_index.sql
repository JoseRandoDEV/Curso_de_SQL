CREATE INDEX idx_name ON users(name);
-- CREAMOS UN INDICE LAMADO idx_name CON EL NOMBRE

CREATE UNIQUE INDEX idx_name ON users(name);
-- OTRA MANERA DE CREAR UN INDICE UNICO SOBRE NOMBRE

CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);
-- OTRA MANERA DE CREAR UN INDICE CON EL NOMBRE Y APELLIDO AFECTANDO LAS DOS COLUMNAS

DROP INDEX idx_name ON users;
-- BORRA EL INDICE idx_name DE LA TABLA users

DROP INDEX idx_name_surname ON users;
-- BORRA INDICE idx_name_surname 