CREATE TABLE persons (
id int,
name varchar(100),
age int,
email varchar(50),
created date
);
-- CREAMOS UNA TABLA DESDE LA LINEA DE COMANDO DE MYSQL

CREATE TABLE persons2 (
id int not null,
name varchar(100) not null,
age int,
email varchar(50),
created date
);
-- CREAMOS UNA TABLA CON RESTRICCIONES NOT NULL PARA EL ID Y NAME

CREATE TABLE persons3 (
id int not null,
name varchar(100) not null,
age int,
email varchar(50),
created datetime,
UNIQUE(id)
);
-- CREAMOS UNA TABLA CON RESTRICCIONES NOT NULL PARA ID Y NAME Y AGREGAMOS ID UNIQUE

CREATE TABLE persons4 (
id int not null,
name varchar(100) not null,
age int,
email varchar(50),
created datetime,
UNIQUE(id),
PRIMARY KEY(id)
);
-- CREAMOS UNA TABLA CON RESTRICCIONES NOT NULL PARA ID Y NAME Y AGREGAMOS ID UNIQUE Y LE AGREGAMOS CLAVE PRIMARIA

CREATE TABLE persons5 (
id int not null,
name varchar(100) not null,
age int,
email varchar(50),
created datetime,
UNIQUE(id),
PRIMARY KEY(id),
CHECK (age >=18)
);
-- LE AGREGAMOS LA RESTRICCION CHECK

CREATE TABLE persons6 (
id int not null,
name varchar(100) not null,
age int,
email varchar(50),
created datetime DEFAULT CURRENT_TIMESTAMP(),
UNIQUE(id),
PRIMARY KEY(id),
CHECK (age >=18)
);
-- COMANDO DEFAULT AGREGA FECHA Y HORA POR DEFECTO SI NO SE CARGA NADA EN LA TABLA

CREATE TABLE persons7 (
id int not null AUTO_INCREMENT,
name varchar(100) not null,
age int,
email varchar(50),
created datetime DEFAULT CURRENT_TIMESTAMP(),
UNIQUE(id),
PRIMARY KEY(id),
CHECK (age >=18)
);
-- COMANDO AUTO_INCREMENT AGREGADO

