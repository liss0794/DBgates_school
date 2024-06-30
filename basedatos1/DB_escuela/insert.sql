INSERT INTO roles (tipo) VALUES ("docente"),("servicios_generales"),("gerencia"),("administracion");
INSERT INTO asignaturas (nombre) VALUES ("ingles"), ("matematicas"),("español"),("sociales"),("ciencias"),("economia"),("informatica");
INSERT INTO cursos (nombre, jornada) VALUES ("primero","mañana"), ("segundo","mañana"), ("tercero","mañana"), ("cuarto","tarde"), ("quinto","tarde");
INSERT INTO documento (tipo, abreviatura) VALUES ("cedula","cc"), ("tarjeta_identidad","T.I"), ("pasaporte","pa"), ("cedula_extranjeria","C.E");
INSERT INTO empleados (nombre, apellido, numero_documento, email, fecha_nacimiento, roles_id, documento_id) VALUES ("luis","castro", 456743,"luis@gmail.com","1991-12-03", 1, 1),
("marcos","gomez", 98543,"marcos@gmail.com","1990-02-23", 1, 1),
("sara","velez", 5216732,"sara@gmail.com","1995-09-04", 2, 1),
("meli","sanchez",4243556,"meli@gmail.com","1996-12-17", 2, 1),
("luna","isis", 6454358,"luna@gmail.com","1990-01-09", 3, 1),
("joan","london", 2323456,"joan@gmail.com","1990-07-31", 3, 1),
("natalia","guios", 6445678,"nata@gmail.com","1990-07-21", 4, 1),
("luisa","ruiz", 1423223,"luisa@gmail.com","1993-07-26", 4, 1);
INSERT INTO estudiantes (nombre, apellido, numero_documento, email, fecha_nacimiento, documento_id, cursos_id) VALUES ("martin","castro", 231345,"martin@gmail.com","2020-12-03", 1, 1),
("sofia","araujo", 2334565,"sofi@gmail.com","2020-02-03", 2, 3),
("caro","perez", 45321,"caro@gmail.com","2020-12-03", 2, 3),
("isaac","gomez", 42212,"isa@gmail.com","2021-02-09", 2, 2),
("carlos","lond", 1234,"carl@gmail.com","2021-11-17", 2, 2),
("iris","perez", 45321,"iris@gmail.com","2022-10-30", 2, 1),
("santi","ramirez", 543216,"saint@gmail.com","2022-04-25", 2, 1),
("gabi","paz", 567821,"caro@gmail.com","2019-04-16", 2, 4),
("mati","uran", 121456,"mati@gmail.com","2018-04-20", 2, 5);

SELECT * FROM cursos_asignaturas;
INSERT INTO cursos_asignaturas (cursos_id, asignaturas_id , empleados_id) VALUES ( 1, 1, 19),
( 1, 2, 20),
( 2, 3, 21),
( 2, 4, 22),
( 3, 5, 23),
( 3, 2, 24),
( 4, 4, 18),
( 5, 1, 17);