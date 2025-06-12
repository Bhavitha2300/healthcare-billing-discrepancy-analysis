SELECT 
  'Billed Amount' AS metric,
  SUM(amount_billed) AS value
FROM vntest.healthcare_claims
UNION ALL
SELECT 
  'Paid Amount' AS metric,
  SUM(amount_paid) AS value
FROM vntest.healthcare_claims;
