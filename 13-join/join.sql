SELECT * FROM departamentos 
INNER JOIN empleados ON departamentos.Id = empleados.DepartamentoId; 


-- Abreviar con la letra que queramos
SELECT * FROM departamentos d
INNER JOIN empleados e ON d.Id = e.DepartamentoId; 

-- Seleccionar los datos que queremos de nuestra tabla
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
INNER JOIN empleados e ON d.Id = e.DepartamentoId;

/*LEFT JOIN se refiere a la primera asignada*/
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
LEFT JOIN empleados e ON d.Id = e.DepartamentoId;

/*RIGHT JOIN se refiere a la segunda asignada*/
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
RIGHT JOIN empleados e ON d.Id = e.DepartamentoId;


/*NOMBRES DE DEPARTAMENTOS Y EL NÚMERO DE EMPLEADOS DE CADA DEPARTAMENTO
*/

SELECT Id, departamentos.Nombre, COUNT(departamentos.Nombre) AS "Total" 
FROM departamentos 
INNER JOIN empleados ON departamentos.Id = empleados.DepartamentoId
GROUP BY departamentos.Nombre ORDER BY Total DESC;