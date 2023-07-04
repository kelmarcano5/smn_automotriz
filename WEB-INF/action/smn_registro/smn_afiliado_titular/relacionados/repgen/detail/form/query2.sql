select
		smn_automotriz.smn_relacionados.smn_relacionado_id,
	smn_automotriz.smn_relacionados.smn_afiliados_id,
	smn_automotriz.smn_relacionados.smn_documento_id,
	smn_automotriz.smn_relacionados.rel_numero_control,
	smn_automotriz.smn_relacionados.smn_clase_rf,
	smn_automotriz.smn_relacionados.smn_auxiliar_rf,
	smn_automotriz.smn_relacionados.smn_parentesco_rf,
	smn_automotriz.smn_relacionados.smn_numero_hijo,
	smn_automotriz.smn_relacionados.rel_fecha_registro
from
	smn_automotriz.smn_relacionados 
where
	smn_automotriz.smn_relacionados.smn_relacionado_id = ${fld:id}
