select
		smn_automotriz.smn_estatus.sta_codigo,
	smn_automotriz.smn_estatus.sta_descripcion,
	smn_automotriz.smn_estatus.sta_fecha_registro,
	smn_automotriz.smn_estatus.est_codigo,
	smn_automotriz.smn_estatus.est_descripcion,
	smn_automotriz.smn_estatus.est_fecha_registro
from
	smn_automotriz.smn_estatus 
where
	smn_automotriz.smn_estatus.smn_estatus_id = ${fld:id}
