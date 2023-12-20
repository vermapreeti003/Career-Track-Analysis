USE sql_and_tableau;

WITH base3 AS(
SELECT student_id, track_id, date_enrolled, date_completed, track_name,
student_track_id, track_completed, days_for_completion,
	CASE WHEN days_for_completion = 0 THEN 'Same Day'
    WHEN days_for_completion BETWEEN 1 AND 7 THEN '1 to 7 days'
    WHEN days_for_completion BETWEEN 8 AND 30 THEN '8 to 30 days'
    WHEN days_for_completion BETWEEN 31 AND 60 THEN '31 to 60 days'
    WHEN days_for_completion BETWEEN 61 AND 90 THEN '61 to 90 days'
    WHEN days_for_completion BETWEEN 91 AND 365 THEN '91 to 365 days'
    WHEN days_for_completion >= 366 THEN '366+ days'
     END AS completion_bucket
FROM     
     (
SELECT *, 
ROW_NUMBER() OVER(ORDER BY student_id, track_name DESC) AS student_track_id, 
IF(date_completed IS NOT NULL, 1, 0) AS track_completed,
ABS(datediff(date_enrolled, date_completed)) AS days_for_completion
FROM 
(
SELECT e.student_id, e.track_id, e.date_enrolled, e.date_completed, t.track_name
FROM career_track_student_enrollments e
JOIN career_track_info t
ON t.track_id = e.track_id
)base) base2
)

SELECT COUNT(track_completed)
FROM base3
WHERE track_completed = 1