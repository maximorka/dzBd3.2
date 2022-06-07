--3. Вычислить общую ЗП только Java разработчиков. 
SELECT SUM(salary) 
FROM (
	SELECT salary
	FROM developer
	LEFT JOIN skills ON skills.kategory = 'Java'
	LEFT JOIN developer_skills 
	WHERE developer.id  = developer_skills.dev_id AND skills.id = developer_skills.skills_id
);
