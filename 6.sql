select
 project_name,
 sum(cost) as cost,
 avg(salary) as average_salary
 from developers
 inner join developer_project
 on developer_project.developer_id = developers.developer_id
 inner join projects
 on developer_project.project_id = projects.project_id
 group by project_name
 ORDER BY cost
 LIMIT 1