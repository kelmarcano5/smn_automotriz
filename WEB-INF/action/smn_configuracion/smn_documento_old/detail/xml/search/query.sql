select
	smn_automotriz.smn_documento.smn_tipo_documento_id as smn_tipo_documento_id_combo,
select
	smn_automotriz.smn_documento.*
from
	smn_automotriz.smn_documento
where
	smn_documento_id = ${fld:id}
