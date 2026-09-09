# Write your MySQL query statement below
with avg_time as (select lag(timestamp,1) over (partition by machine_id,process_id order by timestamp) as prev_temp,machine_id,activity_type,timestamp from activity)
select machine_id,round(avg((timestamp-prev_temp)),3) as 'processing_time' from avg_time
where activity_type='end'
group by machine_id
