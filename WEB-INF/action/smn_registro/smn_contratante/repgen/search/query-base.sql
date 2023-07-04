select
		smn_automotriz.smn_contratante.smn_contratante_id,
	${field}
from
	smn_automotriz.smn_contratante
where
		smn_automotriz.smn_contratante.smn_contratante_id is not null
	${filter}
	
	
