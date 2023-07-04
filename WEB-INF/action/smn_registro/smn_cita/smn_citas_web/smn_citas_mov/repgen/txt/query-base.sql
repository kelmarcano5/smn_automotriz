select
	smn_automotriz.smn_estatus_citas.eci_descripcion,
	smn_automotriz.smn_observaciones.obs_descripcion,
	${field}
from
	smn_automotriz.smn_citas_mov
	inner join smn_automotriz.smn_estatus_citas on smn_automotriz.smn_estatus_citas.smn_estatus_citas_id = smn_automotriz.smn_citas_mov.ctm_estatus_id
	left outer join smn_automotriz.smn_observaciones on smn_automotriz.smn_observaciones.smn_observaciones_id = smn_automotriz.smn_citas_mov.ctm_observaciones_id
where
		smn_automotriz.smn_citas_mov.smn_citas_mov_id is not null
