select
		smn_automotriz.smn_localidad.smn_localidad_id,
	${field}
from
	smn_automotriz.smn_localidad
where
		smn_automotriz.smn_localidad.smn_localidad_id is not null
	${filter}
	
	
