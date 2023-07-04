select 
	smn_automotriz.smn_documento.smn_documento_id
from 
	smn_automotriz.smn_documento 
where 
	smn_automotriz.smn_documento.smn_documento_id=${fld:smn_documento_id}
