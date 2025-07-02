WITH sub_join_finance_campaigns_day AS (

SELECT * 
FROM {{ ref('finance_days') }} AS finance
LEFT JOIN {{ ref('int_campaigns_day') }} campaign
USING (date_date)

)

SELECT 
date_date
, ROUND((operational_margin - ads_cost),2) AS ads_margin
, average_basket
, operational_margin
, ads_cost
, impression AS ads_impression
, click AS ads_clicks
, quantity
, revenue
, purchase_cost
, margin
, shipping_fee
, log_cost
, ship_cost
FROM sub_join_finance_campaigns_day
ORDER BY date_date DESC