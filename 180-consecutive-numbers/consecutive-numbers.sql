select Distinct num as ConsecutiveNums from
(SELECT  num ,
lead(num,1) over (order by id ) as next_1,
lead(num,2) over (order by id) as next_2
from logs ) as f
where num=next_1 and next_1=next_2
