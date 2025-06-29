with raw_genome_score as (
    select * from movielens.raw.raw_genome_scores
)
select MOVIEID as MOVIE_ID,
       TAGID as TAG_ID,
       RELEVANCE as RELEVANCE_SCORE
from raw_genome_score

