select
		smn_automotriz.smn_rol.smn_rol_id,
	${field}
from
	smn_automotriz.smn_rol
where
		smn_automotriz.smn_rol.smn_rol_id is not null
	${filter}
	
	
