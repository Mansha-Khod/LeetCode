# Write your MySQL query statement below
select st.student_id,st.student_name,s.subject_name,count(E.subject_name) as attended_exams from Students st
cross join Subjects s
left join examinations e
on st.student_id = e.student_id and s.subject_name=e.subject_name
group by s.subject_name,st.student_id
order by Student_id,subject_name