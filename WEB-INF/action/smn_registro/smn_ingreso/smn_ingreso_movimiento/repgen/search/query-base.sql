select
	smn_automotriz.smn_estatus_citas.eci_descripcion,
		smn_automotriz.smn_ingreso_movimiento.smn_ingreso_movimiento_id,
	${field}
from
	smn_automotriz.smn_estatus_citas,
	smn_automotriz.smn_ingreso_movimiento
where
	smn_automotriz.smn_estatus_citas.smn_estatus_citas_id = smn_automotriz.smn_ingreso_movimiento.inm_estatus and
		smn_automotriz.smn_ingreso_movimiento.smn_ingreso_movimiento_id is not null
	${filter}
	
	
