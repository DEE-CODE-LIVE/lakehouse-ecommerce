{{ config(materialized='view') }}

SELECT
    invoiceno,
    customerid,
    stockcode,
    invoicedate,
    country,
    quantity,
    unitprice,
    quantity * unitprice AS total_amount
FROM {{ ref('stg_orders') }}
