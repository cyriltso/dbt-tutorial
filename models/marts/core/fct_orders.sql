WITH
    orders AS (
        SELECT
            *
        FROM
            {{ ref('stg_orders') }}
    ),

    payments AS (
        SELECT
            *
        FROM    
            {{ ref('stg_payments') }}
    ),

    order_payments AS (
        SELECT
            order_id
            ,SUM(payment_amount) AS payment_amount
        FROM
            payments
        WHERE
            payment_status = 'success'
        GROUP BY
            order_id
    ),

    fct_orders AS (
        SELECT
            orders.order_id
            ,orders.customer_id
            ,orders.order_date
            ,order_payments.payment_amount
        FROM
            orders
        LEFT JOIN
            order_payments
        USING
            (order_id)
    )

SELECT
    *
FROM
    fct_orders