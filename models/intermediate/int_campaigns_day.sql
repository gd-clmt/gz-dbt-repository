SELECT 
date_date
, MIN(paid_source) AS paid_source
, MIN(campaign_key) AS campaign_key
, MIN(campaign_name) AS campaign_name
, SUM(ads_cost) AS ads_cost
, SUM(impression) AS impression
, SUM(click) AS click
FROM {{ ref('int_campaigns') }}
GROUP BY date_date
ORDER BY date_date DESC