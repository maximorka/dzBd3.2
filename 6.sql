--6. Вычислить среднюю ЗП программистов в самом дешевом проекте.
SELECT AVG(salary) 
FROM(
	SELECT *
	FROM developer
	LEFT JOIN developer_project ON developer.id = developer_project .develop_id
	WHERE developer_project.project_id = SELECT project_id FROM(
																SELECT MIN(cost),id AS project_id 
																FROM project
																GROUP BY project_id 
																ORDER BY MIN(cost) 
																LIMIT 1
																)
);
