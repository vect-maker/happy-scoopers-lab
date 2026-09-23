with source as ( select * from {{ source('raw', 'units_of_measure') }} )

SELECT  unit_of_measure_id, unit_measure_code, name, modified_date
	FROM source
