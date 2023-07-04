select
		smn_automotriz.smn_tramos.trm_codigo,
	smn_automotriz.smn_tramos.trm_descripcion,
	smn_automotriz.smn_tramos.trm_dia_semana,
	smn_automotriz.smn_tramos.trm_fecha_registro
from
	smn_automotriz.smn_tramos 
where
	smn_automotriz.smn_tramos.smn_tramos_id = ${fld:id}
