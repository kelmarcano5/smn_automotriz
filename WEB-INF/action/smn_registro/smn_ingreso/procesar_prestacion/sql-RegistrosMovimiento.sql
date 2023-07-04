select
	smn_automotriz.smn_ingreso_movimiento.smn_ingresos_mov_id, smn_automotriz.smn_ingreso_movimiento.smn_ingreso_id, 
	smn_automotriz.smn_ingreso_movimiento.smn_servicios_rf, smn_automotriz.smn_ingreso_movimiento.smn_unidades_servicios_rf, '' as tipo_precio, 
	smn_base.smn_componentes.cmp_forma_calculo as forma_calculo
from 
	smn_automotriz.smn_ingreso_movimiento
	inner join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = smn_automotriz.smn_ingreso_movimiento.smn_componente_rf
where smn_ingreso_id = ${fld:id_ingreso} and smn_automotriz.smn_ingreso_movimiento.smn_servicios_rf is not null and inm_estatus = 'AC'