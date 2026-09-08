# Write your MySQL query statement below
select id from (select id,recordDate ,temperature, lag(temperature,1) over (order by recordDate) as prev_temp,
lag(recorddate,1) over (order by recordDate) as prev_date from weather) as f
where temperature>prev_temp and datediff(recordDate,prev_date)=1