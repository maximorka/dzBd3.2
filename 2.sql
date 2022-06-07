--2. Найти самый дорогой проект (исходя из salary всех разработчиков).

SELECT SUM(salary) as sum,
SELECT name 
FROM project
WHERE id = project_id AS project_name
FROM (
	SELECT * 
	FROM developer_project
	LEFT JOIN developer 
	WHERE developer_project.develop_id = developer.id
)
GROUP BY project_id
ORDER BY sum DESC 
LIMIT 1 ;
