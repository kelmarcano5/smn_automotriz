select
		smn_automotriz.smn_motivos.smn_motivos_id,
	${field}
from
	smn_automotriz.smn_motivos
where
		smn_automotriz.smn_motivos.smn_motivos_id is not null
	${filter}
	
	
