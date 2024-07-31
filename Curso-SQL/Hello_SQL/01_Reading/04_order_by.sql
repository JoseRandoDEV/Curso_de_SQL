SELECT * FROM users order by age;  
/* ORDENA LA TABLA POR DEFECTO ASCENDENTEMENTE */

SELECT * FROM users order by age ASC;  
/* ORDENA LA TABLA POR EDAD ASCENDENTE */

SELECT * FROM users order by age DESC; 
/* ORDENA LA TABLA POR EDSD DESCENDENTE */

SELECT * FROM users WHERE email='miriam@miriam.com' order by age DESC;
/* ORDENA LA TABLA SOLAMENTE (WHERE) LOS QUE TENGAN EL MAIL miriam@miriam.com eso limita el resto */

SELECT name FROM users WHERE email='miriam@miriam.com' order by age DESC;
/* ORDENA LA TABLA POR EDAD DESCENDENTE Y MUESTRA LOS NOMBRE SOLAMENTE */ 