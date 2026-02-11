SELECT department,
      round(avg(length_of_stay_days), 2) AS avg_stay_days,
      round(avg(total_cost_gbp), 2) AS avg_cost_gbp
FROM patients
GROUP By department
ORDER By avg_cost_gbp DESC