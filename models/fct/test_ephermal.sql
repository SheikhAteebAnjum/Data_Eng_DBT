with test_ephermal as (
    select * from {{ ref('dim_movies_with_tags')
    
     }}
)

select * from test_ephermal

