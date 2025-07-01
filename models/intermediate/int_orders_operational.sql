WITH sub_join_orders_ship AS (

SELECT * 
FROM {{ ref('int_orders_margin') }}
LEFT JOIN {{ ref('stg_raw__ship') }}
USING(orders_id)

)

SELECT
orders_id
, date_date
, ROUND(((margin+shipping_fee)-(logcost+ship_cost)),2) AS operational_margin
FROM sub_join_orders_ship
ORDER BY orders_id DESC
