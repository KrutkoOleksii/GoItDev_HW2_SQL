select
sum(salary) as amount_salary_Java
from(
select
 distinct developer_name,
 salary
 from developers
 inner join developer_skill
 on developer_skill.developer_id = developers.developer_id
 inner join skills
 on developer_skill.skill_id = skills.skill_id
 where skill_name = 'Java'
 ) tb
