WITH src_tags AS (
    SELECT * FROM {{ ref('src_raw_genome_tags') }}
)
SELECT 
    tag_id,
    INITCAP(TRIM(tag_name)) AS tag_name
FROM src_tags


