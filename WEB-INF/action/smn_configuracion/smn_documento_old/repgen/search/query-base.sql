select
		smn_automotriz.smn_documento.smn_documento_id,
	${field}
from
	smn_automotriz.smn_documento
where
		smn_automotriz.smn_documento.smn_documento_id is not null
	${filter}
	
	
