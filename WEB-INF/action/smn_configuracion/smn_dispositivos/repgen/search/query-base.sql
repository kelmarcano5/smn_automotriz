select
		smn_automotriz.smn_dispositivos.smn_dispositivos_id,
	${field}
from
	smn_automotriz.smn_dispositivos
where
		smn_automotriz.smn_dispositivos.smn_dispositivos_id is not null
	${filter}
	
	
