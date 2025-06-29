with src_scores as (
    select * from {{ ref('src_raw_genome_score') }}
)
select
movie_id,
tag_id,
round(relevance_score,4) as relevance_score
from src_scores
where relevance_score > 0
