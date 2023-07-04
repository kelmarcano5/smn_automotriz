select
		smn_automotriz.smn_ingreso_movimiento.smn_servicios_rf
from
		smn_automotriz.smn_ingreso_movimiento
where
		smn_automotriz.smn_ingreso_movimiento.smn_servicios_rf = ${fld:smn_servicios_id} and 
		smn_automotriz.smn_ingreso_movimiento.smn_ingreso_id = ${fld:smn_ingreso_id}
