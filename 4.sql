--4. Добавить поле (cost - стоимость) в таблицу Projects .
ALTER TABLE project
ADD cost INTEGER ;


UPDATE project
SET cost =
SELECT sum 
FROM(
	SELECT SUM(salary) as sum,
	SELECT name FROM project
	WHERE id = project_id 
	FROM (
		SELECT * 
		FROM developer_project
		LEFT JOIN developer 
		WHERE developer_project.develop_id = developer.id
	)
	GROUP BY project_id
	HAVING project_id = 1 );

UPDATE project
SET cost =
SELECT sum FROM(
	SELECT SUM(salary) as sum,
	SELECT name FROM project
	WHERE id = project_id 
	FROM (
		SELECT * 
		FROM developer_project
		LEFT JOIN developer 
		WHERE developer_project.develop_id= developer.id
	)
	GROUP BY project_id
	HAVING project_id = 2 );



UPDATE project
SET cost =
SELECT sum FROM(
	SELECT SUM(salary) as sum,
	SELECT name FROM project
	WHERE id = project_id 
	FROM (
		SELECT * 
		FROM developer_project
		LEFT JOIN developer 
		WHERE developer_project.develop_id= developer.id
	)
	GROUP BY project_id
	HAVING project_id = 3 );


UPDATE project
SET cost =
SELECT sum FROM(
 SELECT SUM(salary) as sum,
SELECT name FROM project
WHERE id = project_id 
FROM (
SELECT * 
FROM developer_project
LEFT JOIN developer 
WHERE developer_project.develop_id= developer.id
)
GROUP BY project_id
HAVING project_id = 4 );
