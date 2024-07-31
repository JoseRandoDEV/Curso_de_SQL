SELECT name, init_date FROM users WHERE age BETWEEN 15 AND 50;

SELECT name AS 'Nombre', init_date AS 'Fecha de inicio en Programacion' FROM users WHERE age BETWEEN 15 AND 50;
-- MUESTRA LA TABLA PERO LE PUSIMOS UN ALIAS AL CAMPO name Y init_date CON EL COMANDO AS ' ' 

SELECT name AS 'Nombre', init_date AS 'Fecha de inicio en Programacion' FROM users WHERE name ='JOSE';

SELECT CONCAT (name , surname) FROM users

SELECT CONCAT ('Nombre: ', name, ', Apellido: ', surname) AS 'Nombre Completo' FROM users 
-- MUESTRA EN UNA COLUMNA EL NOMBRE Y APELLIDO JUNTOS, CON EL ALIAS NOMBRE COMPLETO
