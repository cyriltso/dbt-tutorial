WITH
    payments AS (
        SELECT
            CAST(id AS STRING) AS payment_id
            ,CAST(orderid AS STRING) AS order_id
            ,paymentmethod AS payment_method
            ,status AS payment_status
            ,amount / 100 AS payment_amount
            ,created AS payment_creation_date
            ,_batched_at
        FROM
            dbt-tutorial.stripe.payment
    )

SELECT
    *
FROM
    payments