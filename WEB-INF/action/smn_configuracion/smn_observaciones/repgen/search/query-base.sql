select
		smn_automotriz.smn_observaciones.smn_observaciones_id,
	${field}
from
	smn_automotriz.smn_observaciones
where
		smn_automotriz.smn_observaciones.smn_observaciones_id is not null
	${filter}
	
	
