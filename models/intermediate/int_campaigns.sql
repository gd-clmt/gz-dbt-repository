SELECT *
FROM {{ ref('stg_raw__adwords_greenweez') }}
UNION ALL
SELECT *
FROM {{ ref('stg_raw__bing_greenweez') }}
UNION ALL
SELECT *
FROM {{ ref('stg_raw__criteo_greenweez') }}
UNION ALL
SELECT *
FROM {{ ref('stg_raw__facebook_greenweez') }}