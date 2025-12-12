with raw_hosts AS (
    SELECT
        id as host_id,
        name as host_name,
        is_superhost,
        created_at,
        updated_at
    FROM
        AIRBNB.RAW.RAW_HOSTS
)
SELECT 
    * 
FROM 
    raw_hosts