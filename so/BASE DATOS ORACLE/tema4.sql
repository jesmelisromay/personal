select deptno
FROM emple;

SELECT oficio
from EMPLE;

SELECT DISTINCT oficio
from EMPLE;

SELECT * FROM EMPLE;

SELECT * FROM DEPART;

SELECT EMPNO, APELLIDO, OFICIO, SALARIO FROM EMPLE; 

SELECT DNOMBRE, LOC FROM DEPART;

SELECT DNOMBRE "NOMBRE", LOC "LOCALIDAD" FROM DEPART; --CAMBIA EN EL SELECT EL NOMBRE DE LA CABECERA 

SELECT APELLIDO, SALARIO FROM EMPLE;

SELECT  APELLIDO "NOMBRE", SALARIO "SAL.MENSUAL", (SALARIO * 14) "SALARIO ANUAL" FROM EMPLE;-- CREO UNA NUEVA COLUMNA CON ALGO CALCULADO

SELECT EMPNO, SALARIO, FECHAALT FROM EMPLE;

SELECT EMPNO, SALARIO FROM EMPLE WHERE UPPER(OFICIO)='ANALISTA';--si lo paso a mayuscula comparo con  la cadena a mayuscula

select APELLIDO, oficio from EMPLE where DEPTNO=10;

SELECT APELLIDO, FECHAALT, SALARIO FROM EMPLE WHERE DIR=7698;

SELECT APELLIDO, OFICIO FROM EMPLE WHERE SALARIO>1000;

SELECT APELLIDO, SALARIO, COMISION FROM EMPLE  WHERE ((SALARIO + COMISION)>1500 OR SALARIO>1500);

SELECT APELLIDO, SALARIO, FECHAALT FROM EMPLE WHERE SALARIO>1000 AND DEPTNO=20;

SELECT APELLIDO, FECHAALT FROM EMPLE WHERE FECHAALT >= '01/01/2011';

SELECT APELLIDO, SALARIO FROM EMPLE 
ORDER BY SALARIO DESC, APELLIDO;

SELECT * FROM EMPLE 
ORDER BY APELLIDO;

SELECT * FROM EMPLE 
ORDER BY FECHAALT;

SELECT * FROM EMPLE 
ORDER BY SALARIO;

SELECT APELLIDO, OFICIO, SALARIO FROM EMPLE 
ORDER BY APELLIDO ASC, SALARIO DESC;

SELECT * FROM EMPLE WHERE UPPER(OFICIO)='VENDEDOR';

SELECT APELLIDO, OFICIO, SALARIO FROM EMPLE WHERE UPPER(APELLIDO)='SALA';

SELECT * FROM EMPLE WHERE COMISION >=0;

SELECT APELLIDO, OFICIO FROM EMPLE WHERE COMISION IS NULL;

SELECT APELLIDO, OFICIO FROM EMPLE WHERE COMISION IS NOT NULL;

SELECT APELLIDO, SALARIO FROM EMPLE WHERE UPPER(OFICIO) IN ('ANALISTA', 'VENDEDOR', 'EMPLEADO');

SELECT APELLIDO, SALARIO FROM EMPLE WHERE UPPER(OFICIO) NOT IN ('ANALISTA', 'VENDEDOR', 'EMPLEADO');

SELECT APELLIDO, SALARIO, OFICIO FROM EMPLE WHERE SALARIO BETWEEN 1000 AND 2000;

SELECT APELLIDO, SALARIO, OFICIO FROM EMPLE WHERE SALARIO NOT BETWEEN 1000 AND 2000;

SELECT APELLIDO, OFICIO FROM EMPLE WHERE UPPER(APELLIDO) LIKE 'A%';

SELECT APELLIDO, OFICIO FROM EMPLE WHERE UPPER(APELLIDO) LIKE '%Z';

SELECT APELLIDO, OFICIO FROM EMPLE WHERE UPPER(APELLIDO) LIKE '%A%';

SELECT APELLIDO, DEPTNO FROM EMPLE WHERE UPPER(APELLIDO) LIKE 'S%' AND UPPER(APELLIDO) LIKE '%L%';

SELECT APELLIDO, DEPTNO FROM EMPLE WHERE UPPER(APELLIDO) LIKE 'S%L%';

SELECT APELLIDO, DIR FROM EMPLE WHERE APELLIDO LIKE '___'; --QUE CONTENGA TRES CARACTERES 

SELECT APELLIDO, SALARIO FROM EMPLE WHERE UPPER(APELLIDO) LIKE '_A%';--QUE LA SEGUNDA LETRA SEA ESTA 


SELECT APELLIDO, SALARIO, SALARIO*1.05 "INCREMENTO" FROM EMPLE WHERE DEPTNO=10;

SELECT APELLIDO, SALARIO, COMISION, SALARIO+NVL(COMISION,0) "SUMA" FROM EMPLE;--CUANDO ENCUENTRE UN VALOR NULLO LO CONVIERTE A 0 CON NVL

SELECT APELLIDO,SALARIO, NVL(COMISION,0), SALARIO+NVL(COMISION,0) "SUMA" FROM EMPLE;--CUANDO ENCUENTRE UN VALOR NULLO LO CONVIERTE A 0 CON NVL

SELECT APELLIDO, SALARIO, COMISION, SALARIO+NVL(COMISION,0) "SUMA" FROM EMPLE WHERE SALARIO+NVL(COMISION,0)>1500;

SELECT APELLIDO ||'  '|| OFICIO "APELLIDO Y OFICIO" FROM EMPLE;--QUE CONCATENE CADENA 

SELECT APELLIDO ||' GANA '|| SALARIO ||' Y LE GUSTARIA GANAR '|| SALARIO*2 "DESEOS" FROM EMPLE;

SELECT APELLIDO, SALARIO, DEPTNO FROM EMPLE WHERE SALARIO>2000 AND (DEPTNO=10 OR DEPTNO=20);
SELECT APELLIDO, SALARIO, DEPTNO FROM EMPLE WHERE SALARIO>2000 AND DEPTNO IN (10,20);
