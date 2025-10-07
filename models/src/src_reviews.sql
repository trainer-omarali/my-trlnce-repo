WITH raw_reviews AS (
    SELECT
        *
    FROM
        {{ source('DATA_ENG_DBT', 'reviews') }}
)
SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS review_sentiment
FROM
    raw_reviews
