# Write your MySQL query statement below
select id,count(id) as num from 
(select requester_id as id from RequestAccepted 
union all
select accepter_id as id from RequestAccepted) as f
GROUP BY id
order by num Desc
limit 1