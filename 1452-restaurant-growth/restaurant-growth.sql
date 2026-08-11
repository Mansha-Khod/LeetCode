# Write your MySQL query statement below
select visited_on,moving_total as amount,round(moving_total/7,2) as average_amount from 
(select visited_on,sum(daily_amt) over(order by visited_on rows between 6 preceding and current row ) as moving_total, row_number() over (order by visited_on) as rn
 from
(select visited_on,sum(amount) as daily_amt
from customer
group by visited_on) as f)as d

where rn>=7