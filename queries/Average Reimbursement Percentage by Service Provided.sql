SELECT
  service_provided,
  AVG(amount_billed) AS avg_billed,
  AVG(amount_paid) AS avg_paid,
  (100.0 * AVG(amount_paid) / NULLIF(AVG(amount_billed), 0))::numeric(10,2) AS reimbursement_percentage
FROM vntest.healthcare_claims
GROUP BY service_provided
ORDER BY reimbursement_percentage ASC;