-- Select all lessons given each month in a year
CREATE VIEW lessons_per_month  AS
    SELECT
	EXTRACT(month FROM time) AS month,
	count(*) FROM lesson WHERE EXTRACT(year FROM time) = '2019' GROUP BY EXTRACT(month FROM time)
	ORDER BY EXTRACT(month FROM time) ASC;
	
-- Show how many siblings a student has
CREATE VIEW no_of_siblings AS
    SELECT
	EXTRACT(month FROM time) AS month,
	count(*) FROM lesson WHERE EXTRACT(YEAR FROM time) = '2021' GROUP BY EXTRACT(month FROM time)
	ORDER BY EXTRACT(month FROM time) ASC;


-- Select all instructors that have taught more than a specific amount of lesson
CREATE VIEW lesson_average_instructor AS
    SELECT instructor_id, count(*) FROM lesson WHERE EXTRACT(YEAR FROM time) = '2021' AND EXTRACT(MONTH FROM time) = '3' GROUP BY instructor_id HAVING COUNT(*) > 0
    ORDER BY count(*) DESC;
