--1. Добавить разработчикам поле (salary - зарплата). 

ALTER TABLE developer
ADD salary INTEGER ;

UPDATE developer
SET salary = 3600
WHERE id = 1;

UPDATE developer
SET salary = 2200
WHERE id = 2;

UPDATE developer
SET salary = 2200
WHERE id = 3;

UPDATE developer
SET salary = 4600
WHERE id = 4;
