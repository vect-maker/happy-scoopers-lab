
with source as ( select * from {{ source('raw', 'product_subcategories') }} )

SELECT  product_subcategory_id, product_category_id, subcategory_name, subcategory_description, modified_date
	FROM source;
