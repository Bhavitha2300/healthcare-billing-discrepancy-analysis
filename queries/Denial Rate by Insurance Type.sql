SELECT
  insurance_type,
  COUNT(*) AS total_claims,
  SUM(CASE WHEN amount_paid = 0 THEN 1 ELSE 0 END) AS denied_claims,
  ROUND(100.0 * SUM(CASE WHEN amount_paid = 0 THEN 1 ELSE 0 END) / COUNT(*), 2) AS denial_rate_percentage
FROM vntest.healthcare_claims
GROUP BY insurance_type
ORDER BY denial_rate_percentage DESC;