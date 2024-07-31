-- RELACION 1:1

SELECT * FROM users
INNER JOIN dni

SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

SELECT * FROM users
SELECT * FROM dni
JOIN dni
ON users.user_id = dni.user_id;
-- MUESTRA LOS DATOS EN COMUN DE LAS DOS TABLAS

SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC
-- MUESTRA LA TABLA ORDENADA POR AGE ASCENDENTE

SELECT name, dni_number FROM users
INNER JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC
-- MUESTRA SOLAMENTE NAME Y DNI DE LAS TABLAS ORDENADAS POR AGE ASC

-- RELACION 1:N

SELECT * FROM users
INNER JOIN companies
ON users.company_id = companies.company_id
-- MUESTRA LOS USUARIOS Y LAS COMPANIAS EN LAS QUE TRABAJAN

SELECT * FROM companies
INNER JOIN users
ON users.company_id = companies.company_id
-- AL INVERTIR LA BUSQUEDA MUESTRA PRIMERO LAS COMPANIAS Y LUEGIO LOS USUARIOS

SELECT companies.name, users.name FROM companies
INNER JOIN users
ON companies.company_id = users.company_id
-- MUESTRA LOS NOMBRES DE LAS COMPANIAS Y LOS NOMBRES DE LOS USUARIOS

-- RELACION N:M
SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id
-- MUESTRA NOMBRE DE USUARIO Y LENGUAJE QUE SABE UNIENDO TRES TABLAS

SELECT users.name, languages.name
FROM users
JOIN users_languages ON users.user_id = users_languages.user_id
JOIN languages ON users_languages.language_id = languages.language_id
-- MUESTRA LO MISMO QUE LA ANTERIRO PERO CAMBIANDO LAS TABLA DE BUSQUEDA
