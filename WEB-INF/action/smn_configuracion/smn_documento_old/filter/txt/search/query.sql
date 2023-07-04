
select
		smn_automotriz.smn_documento.smn_documento_id,
	smn_automotriz.smn_documento.smn_tipo_documento_id,
	smn_automotriz.smn_documento.smn_transaccion_general_rf as smn_transaccion_general_rf,
	smn_automotriz.smn_documento.doc_secuencia,
	smn_automotriz.smn_documento.doc_codigo,
	smn_automotriz.smn_documento.doc_nombre,
	smn_automotriz.smn_documento.doc_fecha_registro
	
from
	smn_automotriz.smn_documento
