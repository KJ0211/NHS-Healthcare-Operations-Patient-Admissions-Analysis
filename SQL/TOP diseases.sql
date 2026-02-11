SELECT diagnosis, count(*) AS cases
FROM patients
GROUP BY diagnosis
ORDER By cases DESC