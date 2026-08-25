# Write your MySQL query statement below
select Department,Employee,Salary from (select d.name as Department,e.name as Employee,e.Salary as salary,dense_rank() over (partition by d.name order by e.salary DEsc ) as rankk from employee e
left join department d
on e.departmentid=d.id) as f
where rankk=1
