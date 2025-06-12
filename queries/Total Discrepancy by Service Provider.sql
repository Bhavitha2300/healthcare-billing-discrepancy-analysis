SELECT service_provider, SUM(amount_billed - amount_paid) AS discrepency_by_service_provider 
FROM vntest.healthcare_claims 
GROUP BY service_provider;