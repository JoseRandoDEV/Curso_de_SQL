SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;
-- MUESTRA TODOS LOS DATOS DE LA TABLA LEFT CON LOS DNI COMPLETOS Y RELLENA CON NULL LOS QUE FALTAN

SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;
-- MUESTRA TODOS LOS NOMBRE DE LA TABLA LEFT CON LOS DNI Y LOS QUE NO TIENEN RELLENA CON NULL

SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;
-- MUESTRA LOS DATOS DE LAS TABLA LEFT AUNQUE NO TENGAN NOMBRE LOS DNI

SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id

