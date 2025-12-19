SELECT * FROM {{ ref('fct_reviews') }} a
INNER JOIN {{ ref('dim_listings_cleansed') }} b
ON a.listing_id =b.listing_id
WHERE a.review_date <= b.created_at