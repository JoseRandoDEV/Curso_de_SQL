SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;
-- MUESTRA LOS DATOS DE LA TABLA DERECHA (DNI) Y LOS DATOS DE LA IZQUIERDA (NOMBRE) RELLENA CON NULL

SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;
-- MUESTRA TODOS LOS DATOS DE LA TABLA RIGHT CON LOS DNI Y LOS DNI QUE NO TIENEN NOMBRE LOS RELLENA CON NULL

SELECT name, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;
-- MUESTRA LOS USUARIOS Y LOS DNI INVIRTIENDO LAS TABLAS

SELECT users.name, languages.name
FROM users
RIGHT JOIN users_languages ON users.user_id = users_languages.user_id
RIGHT JOIN languages ON users_languages.language_id = languages.language_id
-- MUESTRA TODOS LOS LENGUAJES Y RELLENA CON NULL LOS LENGUAJES QUE NO TIENEN USUARIOS

