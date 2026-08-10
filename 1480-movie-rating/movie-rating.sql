# Write your MySQL query statement below
(select name as results from users u
right join movierating m 
on u.user_id=m.user_id
group by m.user_id
order by count(movie_id) Desc,name asc 
limit 1)

union all

(select title as results from movies mm
right join movierating mr
on mm.movie_id=mr.movie_id
where mr.created_at>='2020-02-01' and mr.created_at<='2020-02-29'
group by mr.movie_id
order by avg(rating) desc, title asc
limit 1)
