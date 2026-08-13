# Write your MySQL query statement below
select department,employee,salary from 
(select d.name as department,e.name as employee , e.salary as salary , dense_rank() over(partition by d.id order by e.salary DESC
) as ranked from employee e
left join department d
on e.departmentID=d.id
order by e.salary,d.name) as f
where ranked<=3

