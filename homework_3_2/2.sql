SELECT
  project_name,
  sum(salary) AS amount_salary,
  avg(salary) AS average_salary
 FROM developers
 INNER JOIN developer_project
 ON developer_project.developer_id = developers.developer_id
 INNER JOIN projects
 ON developer_project.project_id = projects.project_id
 GROUP BY project_name
 ORDER BY amount_salary DESC
 LIMIT 1
