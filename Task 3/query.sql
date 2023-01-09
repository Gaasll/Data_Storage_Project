-- Select all lessons given each month in a year
CREATE VIEW lessons_per_month AS
SELECT 
EXTRACT (MONTH FROM CAST (lesson.lesson_date AS timestamp)) AS month_nr,
to_char( lesson.lesson_date , 'MON') AS "month",
COUNT(*) as "nr of lessons"
FROM lesson
WHERE EXTRACT(YEAR FROM CAST(lesson.lesson_date AS timestamp)) = 2023
GROUP BY month_nr, month
ORDER BY month_nr;

-- count nr of siblings
CREATE VIEW nr_of_siblings AS
SELECT amount_of_siblings, COUNT(*) as "number of students"
FROM (SELECT a.person_id, COUNT (sibling_person_number) as amount_of_siblings
FROM person as a full join sibling_person_number as b ON a.person_id = b.person_id
GROUP BY a.person_id
ORDER BY amount_of_siblings) AS students_siblings
GROUP BY amount_of_siblings;

-- instructor lessons given this month
SELECT a.instructor_id, a.first_name, COUNT(*) as lessons
FROM instructor as a INNER JOIN lesson as b ON a.instructor_id = b.instructor_id
WHERE EXTRACT(YEAR FROM CAST(b.lesson_date AS timestamp)) = EXTRACT(YEAR FROM CURRENT_DATE)
AND EXTRACT(MONTH FROM CAST (b.lesson_date AS timestamp)) = EXTRACT(MONTH FROM CURRENT_DATE)
GROUP BY a.instructor_id
HAVING COUNT(*) >= 1
ORDER BY lessons DESC;


-- ensembles given next week 
CREATE VIEW ensembles_next_week AS
SELECT a.lesson_id, l.genre,
 to_char( l.lesson_date , 'DY') AS "week day",
CASE
	WHEN COUNT(a.person_id) = CAST(l.max_students AS int) AND l.lesson_id = a.lesson_id THEN 'Full booked'
	WHEN COUNT(a.person_id) = CAST(l.max_students AS int)-1 AND l.lesson_id = a.lesson_id THEN '1 seat left'
	WHEN COUNT(a.person_id) = CAST(l.max_students AS int)-2 AND l.lesson_id = a.lesson_id THEN '2 seats left'
	ELSE 'Many seats left'
END AS seats	
FROM lesson AS l INNER JOIN student_lesson as a ON l.lesson_id = a.lesson_id
WHERE l.lesson_type = 'ensemble' AND EXTRACT(WEEK FROM CURRENT_DATE)+1 = EXTRACT(WEEK FROM CAST(l.lesson_date AS timestamp))
AND EXTRACT(YEAR FROM CURRENT_DATE) = EXTRACT(YEAR FROM CAST(l.lesson_date AS timestamp))
GROUP BY a.lesson_id, l.lesson_id
ORDER BY l.genre, "week day";

