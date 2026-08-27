with dedup_query as 
(select 
*,
row_number() over (partition by id order by updateDate desc) as row 
from 
{{ source('source', 'items') }}
)

select id, name , category, updateDate
from dedup_query
where row = 1