
CREATE TABLE dni(
dni_id INT AUTO_INCREMENT PRIMARY KEY,
dni_number INT NOT NULL,
user_id INT,
UNIQUE(dni_id),
FOREIGN KEY(user_id) REFERENCES users(user_id)
);
-- CREAMOS TABLA DNI RELACION 1:1

CREATE TABLE companies(
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);


ALTER TABLE users 
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id)
-- CREAMOS CLAVE DORANEA PARA RELACION 1:N ENTRE TABLA USERS Y COMPANY ID 

CREATE TABLE languages(
language_id INT AUTO_INCREMENT PRIMARY KEY,
name varchar(100) NOT NULL
);

CREATE TABLE users_languages(
users_language_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
language_id INT,
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(language_id) REFERENCES languages(language_id),
UNIQUE (user_id, language_id)
);
-- ESTABLECEMOS RELACION N:N CREANDO TABLA INTERMEDIA users_languages

-- INSERT
INSERT INTO dni (dni_number, user_id) VALUES (44333666,1);
INSERT INTO dni (dni_number, user_id) VALUES (25957620,2);
INSERT INTO dni (dni_number, user_id) VALUES (52723751,4);
INSERT INTO dni (dni_number) VALUES (66999888);

INSERT INTO companies (name) VALUES ('MoureDev');
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');

UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 4;
UPDATE users SET company_id = 1 WHERE user_id = 7;
-- ASIGNAMOS UNA COMPANIA A CADA USUARIO

INSERT INTO languages (name) VALUES ('Swift');
INSERT INTO languages (name) VALUES ('Cotline');
INSERT INTO languages (name) VALUES ('JavaScript');
INSERT INTO languages (name) VALUES ('Java');
INSERT INTO languages (name) VALUES ('Python');
INSERT INTO languages (name) VALUES ('C#');
INSERT INTO languages (name) VALUES ('Cobol');
-- INSERTAMOS LENGUAJES DE PROGRAMACION A LA TABLA

INSERT INTO users_languages (user_id,language_id) VALUES (1,1);
INSERT INTO users_languages (user_id,language_id) VALUES (1,2);
INSERT INTO users_languages (user_id,language_id) VALUES (1,5);
INSERT INTO users_languages (user_id,language_id) VALUES (2,3);
INSERT INTO users_languages (user_id,language_id) VALUES (2,5);
-- INSERTAMOS RELACIONES DE USUARIOS LENGUAJES

