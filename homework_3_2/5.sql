SELECT
 project_name,
 cost
FROM  hw2.projects
WHERE cost = 
 (SELECT
  min(cost) AS cost
  FROM hw2.projects
 );
