select
case when id%2!=0 and id=max(id) over() then id
when id%2=0 then id-1
else id+1
end as id,student
from seat
order by id 