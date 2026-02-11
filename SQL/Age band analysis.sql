WITH banded as (
SELECT CASE
   WHEN age<20 THEN '<20'
   WHEN age BETWEEN 20 AND 39 THEN '20-39'
   WHEN age BETWEEN 40 AND 59 THEN '40-59'
   WHEN age BETWEEN 60 AND 79 THEN '60-79'
ELSE '80+'
END as age_band,
*
FROM patients
)
SELECT age_band,
count(*) as patients,
round(avg(length_of_stay_days),2)as avg_stay,
round(avg(total_cost_gbp),2)as avg_cost
FROM banded
GROUP by age_band
ORDER by patients DESC