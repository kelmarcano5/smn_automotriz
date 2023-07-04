select
	smn_automotriz.smn_estatus.sta_codigo,
	smn_automotriz.smn_estatus.sta_descripcion,
	smn_automotriz.smn_estatus.sta_cod_siguiente,
	smn_automotriz.smn_estatus.sta_fecha_registro,
		smn_automotriz.smn_estatus.smn_estatus_id
	
from
	smn_automotriz.smn_estatus
where
	smn_estatus_id is not null
	${filter}
order by
		smn_estatus_id
