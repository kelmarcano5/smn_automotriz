select
		smn_automotriz.smn_observaciones.obs_codigo,
	smn_automotriz.smn_observaciones.obs_descripcion,
	smn_automotriz.smn_observaciones.obs_tipo,
	smn_automotriz.smn_observaciones.obs_fecha_registro
from
	smn_automotriz.smn_observaciones 
where
	smn_automotriz.smn_observaciones.smn_observaciones_id = ${fld:id}
