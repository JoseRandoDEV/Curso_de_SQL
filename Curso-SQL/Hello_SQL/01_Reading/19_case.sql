SELECT *,
CASE
	WHEN age > 17 THEN 'Es mayor de edad'
    ELSE 'Eres menor de edad'
END AS '¿Eres Mayor de Edad?'
FROM users;

SELECT *,
CASE
	WHEN age > 17 THEN true
    ELSE false
END AS '¿Eres Mayor de Edad?' -- SIEMPRE QUE SE CREA UN CASE HAY QUE PONER UN ALIAS
FROM users;

-- MUESTRA MIENTRAS LA EGE SEA MAYOR A 17 (ERES O NO MAYOR DE EDAD) O ( V O F)

SELECT *,
CASE
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Recien cumpliste la mayoria de edad!!'
    ELSE 'Eres menor de edad'
END AS '¿Eres Mayor de Edad?'
FROM users;
-- MUESTRA EL MISMOS EJEMPLO QUE EL ANTERIOR Y AGREGAMOS LA LEYENDA SI = 18
