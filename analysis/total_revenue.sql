SELECT
    SUM(IF(payment_status='success', payment_amount, 0)) AS successful_payments
FROM
    {{ ref('stg_payments') }}