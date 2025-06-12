SELECT
  DATE_TRUNC('month', transaction_date) AS claim_month,
  SUM(amount_billed) AS total_billed,
  SUM(amount_paid) AS total_paid
FROM vntest.healthcare_claims
GROUP BY claim_month
ORDER BY claim_month;