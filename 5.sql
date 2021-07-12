select
project_name,
cost
from  hw2.projects
where cost = 
(select
min(cost) as cost
from hw2.projects
) 
;