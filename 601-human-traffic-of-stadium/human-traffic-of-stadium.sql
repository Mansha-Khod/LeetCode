select id,visit_date,people from (select id,visit_date,people,COUNT(*) OVER (PARTITION BY ra) AS cnt
from (select id,visit_date,people,id - ROW_NUMBER() OVER (ORDER BY id) AS ra
from stadium
where people >= 100
) AS x) as y 
where cnt>=3
order by visit_Date asc
