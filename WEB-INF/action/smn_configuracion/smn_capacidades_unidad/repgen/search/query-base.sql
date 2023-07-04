select
		smn_automotriz.smn_capacidades_unidad.smn_capacidades_id,
	${field}
from
	smn_automotriz.smn_capacidades_unidad
where
		smn_automotriz.smn_capacidades_unidad.smn_capacidades_id is not null
	${filter}
	
	
