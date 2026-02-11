SELECT substr(admission_date,1,7) AS month, count(*) AS admissions
FROM patients
GROUP by month
ORDER by month