SELECT
sum(salary) AS amount_salary_Java
FROM(
SELECT
 DISTINCT developer_name,
 salary
 FROM developers
 INNER JOIN developer_skill
 ON developer_skill.developer_id = developers.developer_id
 INNER JOIN skills
 ON developer_skill.skill_id = skills.skill_id
 WHERE skill_name = 'Java'
 ) tb
