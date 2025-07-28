{{ config(materialized='view') }}

SELECT
    o.invoiceno,
    o.customerid,
    c.country,
    o.stockcode,
    p.description AS product_description,
    p.unitprice,
    o.quantity,
    o.quantity * o.unitprice AS total_amount
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ ref('dim_customers') }} c
    ON o.customerid = c.customerid
LEFT JOIN {{ ref('dim_products') }} p
    ON o.stockcode = p.stockcode
WHERE o.customerid IS NOT NULL
