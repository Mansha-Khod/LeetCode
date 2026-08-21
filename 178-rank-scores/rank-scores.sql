# Write your MySQL query statement below
select score ,  dense_rank() over (order by score DESC) AS "rank"  from scores