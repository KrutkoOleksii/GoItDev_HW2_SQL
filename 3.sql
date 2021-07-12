select
sum(salary) as summa
from(
select
 developer_name,
 max(salary) as salary
 from developers
 inner join developer_skill
 on developer_skill.developer_id = developers.developer_id
 inner join skills
 on developer_skill.skill_id = skills.skill_id
 where skill_name = 'Java'
 group by developer_name
 ) as tb
 ;