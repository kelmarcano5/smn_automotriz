select
		smn_automotriz.smn_ingreso_movimiento.inm_ordenante_descripcion
from
		smn_automotriz.smn_ingreso_movimiento
where
		upper(smn_automotriz.smn_ingreso_movimiento.inm_ordenante_descripcion) = upper(${fld:inm_ordenante_descripcion})
