SELECT
  service_provided,
  COUNT(*) AS total_claims,
  SUM(CASE WHEN amount_paid = 0 THEN 1 ELSE 0 END) AS denied_claims,
  ROUND(100.0 * SUM(CASE WHEN amount_paid = 0 THEN 1 ELSE 0 END) / COUNT(*), 2) AS denial_rate
FROM vntest.healthcare_claims
GROUP BY service_provided
ORDER BY denial_rate DESC;
