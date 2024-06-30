SELECT e.nombre, c.nombre
 FROM estudiantes e 
 JOIN cursos c ON e.cursos_id = c.id										
 WHERE c.id=4;

SELECT e.nombre, a.nombre
 FROM estudiantes e 
 JOIN cursos c ON e.cursos_id = c.id										
 JOIN cursos_asignaturas ca ON c.id = ca.cursos_id
 JOIN asignaturas a ON  a.id = ca.asignaturas_id
 WHERE a.id=2;
 
 SELECT e.nombre, em.nombre, r.tipo
 FROM estudiantes e 
 JOIN cursos c ON e.cursos_id = c.id										
 JOIN cursos_asignaturas ca ON c.id = ca.cursos_id
JOIN asignaturas a ON  a.id = ca.asignaturas_id
 JOIN empleados em ON  em.id = ca.empleados_id
 JOIN roles r ON  r.id = em.roles_id
 WHERE e.id=1 and r.tipo='docente';
 
 SELECT COUNT(e.id) AS total_estudiantes, c.nombre
 FROM estudiantes e 
 JOIN cursos c ON e.cursos_id = c.id 
 GROUP BY c.nombre
 ORDER BY total_estudiantes DESC;
 