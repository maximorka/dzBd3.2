--5. Найти самый дешевый проект (исходя из cost всех проектов).
SELECT MIN(cost),name AS project_name 
FROM project
GROUP BY project_name
ORDER BY MIN(cost) 
LIMIT 1;

