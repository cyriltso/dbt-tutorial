WITH 
    orders AS (
        SELECT
            CAST(id AS STRING) AS order_id
            ,CAST(user_id AS STRING) AS customer_id
            ,order_date
            ,status
        FROM 
            dbt-tutorial.jaffle_shop.orders
)

SELECT
    *
FROM
    orders