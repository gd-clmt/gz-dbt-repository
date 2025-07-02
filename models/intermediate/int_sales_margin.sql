WITH sub_join_products_sales AS (

SELECT 
sales.date_date
, sales.orders_id
, sales.products_id
, sales.revenue
, sales.quantity
, product.purchase_price
, ROUND((sales.quantity * product.purchase_price),2) AS purchase_cost
FROM {{ ref('stg_raw__sales') }} AS sales
LEFT JOIN {{ ref('stg_raw__product') }} AS product
USING(products_id)

)

SELECT *
, ROUND((revenue - purchase_cost),2) AS margin
, {{ margin_percent("revenue", "purchase_cost") }} AS margin_percent
FROM sub_join_products_sales

