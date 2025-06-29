with raw_genome_tags as (
    select * from movielens.raw.raw_genome_tags
)
select TAGID as TAG_ID,
       TAG as TAG_NAME
from raw_genome_tags