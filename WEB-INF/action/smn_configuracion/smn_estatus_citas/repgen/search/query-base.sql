select
		smn_automotriz.smn_estatus_citas.smn_estatus_citas_id,
	${field}
from
	smn_automotriz.smn_estatus_citas
where
		smn_automotriz.smn_estatus_citas.smn_estatus_citas_id is not null
	${filter}
	
	
