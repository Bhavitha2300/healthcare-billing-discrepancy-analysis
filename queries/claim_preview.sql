SELECT
    transaction_id,
    patient_id,
    transaction_date,
    service_provider,
    service_provided,
    amount_billed,
    amount_paid,
    insurance_type
FROM vntest.healthcare_claims
LIMIT 100;
