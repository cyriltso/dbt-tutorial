WITH 
    customers AS (
        SELECT
            CAST(id AS STRING) AS customer_id
            ,first_name
            ,last_name
        FROM 
            dbt-tutorial.jaffle_shop.customers
)

SELECT
    *
FROM
    customers