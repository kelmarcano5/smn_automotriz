select
		smn_automotriz.smn_rel_usuarios_entidad.smn_rel_usuario_entidad_id,
	${field}
from
	smn_automotriz.smn_rel_usuarios_entidad
where
		smn_automotriz.smn_rel_usuarios_entidad.smn_rel_usuario_entidad_id is not null
	${filter}
	
	
