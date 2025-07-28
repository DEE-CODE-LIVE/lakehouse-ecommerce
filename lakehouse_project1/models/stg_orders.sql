{{ config(materialized='view') }}

SELECT
    invoiceno,
    stockcode,
    description,
    quantity,
    invoicedate,
    unitprice,
    customerid,
    country
FROM {{ source('lakehouse_project1', 'ecommerceproject1_raw') }}
WHERE quantity > 0
