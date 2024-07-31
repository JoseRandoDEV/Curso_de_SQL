SELECT * FROM users WHERE NOT email='miriam@gmail.com'
/* MUESTRA LOS USUARIOS QUE NO TIENEN EL EMAIL miriam@gmail.com */

SELECT * FROM users WHERE NOT email='sara@gmail.com' AND age=15;
/* MUESTRA LOS USUARIOS QUE NO TIENEN EL EMAIL sara@gmail.com y tienen de edad 15 años */

SELECT * FROM users WHERE NOT email='sara@gmail.com' OR age=15;
/* MUSTRA DATOS DE USUARIOS QUE NO TENGAN EL EMAIL sara@gmail.com O QUE LA EDAD SEA 15 */
