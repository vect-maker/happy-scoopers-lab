with source as ( select * from {{ source('raw', 'product_categories') }} )

SELECT category_id, category_name, category_description, department_id, modified_date
	FROM source;
