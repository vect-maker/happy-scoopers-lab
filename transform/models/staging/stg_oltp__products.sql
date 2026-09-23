with source as ( select * from {{ source('r' , 'products') }} )
select
    product_id, product_name, product_code, product_description,
    subcategory id, unit_of_measure id, unit_price,
    case when discontinued then 'Si' else ‘No’ end as is discontinued
from source
