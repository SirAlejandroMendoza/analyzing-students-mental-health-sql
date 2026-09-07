-- Project: Analyzing Students' Mental Health
-- Database: PostgreSQL
-- Description: Aggregate depression (PHQ-9), social connectedness (SCS), 
--              and acculturative stress (ASISS) scores by length of stay 
--              for international students.

SELECT 
    stay,
    COUNT(inter_dom) AS count_int,
    ROUND(AVG(todep), 2) AS average_phq,
    ROUND(AVG(tosc), 2) AS average_scs,
    ROUND(AVG(toas), 2) AS average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;
