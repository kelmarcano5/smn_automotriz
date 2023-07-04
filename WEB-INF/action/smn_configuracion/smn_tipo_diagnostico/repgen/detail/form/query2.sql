select
		smn_automotriz.smn_tipo_diagnostico.dgn_codigo,
	smn_automotriz.smn_tipo_diagnostico.dgn_descripcion,
	smn_automotriz.smn_tipo_diagnostico.dgn_fecha_registro,
	smn_automotriz.smn_tipo_diagnostico.dgn_tipo
from
	smn_automotriz.smn_tipo_diagnostico 
where
	smn_automotriz.smn_tipo_diagnostico.smn_tipo_diagnostico_id = ${fld:id}
