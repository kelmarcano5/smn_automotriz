select
		smn_automotriz.smn_estatus.smn_estatus_id,
	${field}
from
	smn_automotriz.smn_estatus
where
		smn_automotriz.smn_estatus.smn_estatus_id is not null
	${filter}
	
	
