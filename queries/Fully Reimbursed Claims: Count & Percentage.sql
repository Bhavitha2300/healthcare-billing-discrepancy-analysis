SELECT
  COUNT(*) AS total_claims,
  SUM(CASE WHEN amount_billed = amount_paid THEN 1 ELSE 0 END) AS fully_reimbursed_claims,
  ROUND(100.0 * SUM(CASE WHEN amount_billed = amount_paid THEN 1 ELSE 0 END) / COUNT(*), 2) AS full_reimbursement_rate
FROM vntest.healthcare_claims;