select
	smn_automotriz.smn_ingreso_movimiento.smn_ingresos_mov_id,
	smn_automotriz.smn_ingreso_movimiento.inm_cantidad,
	smn_automotriz.smn_ingreso_movimiento.inm_monto_ml,
	smn_automotriz.smn_ingreso_movimiento.inm_monto_ma,
	smn_automotriz.smn_ingreso_movimiento.smn_prestador_servicio_rf,
	smn_base.smn_componentes.cmp_descripcion as smn_componente_rf,
	smn_base.smn_servicios.svc_descripcion as smn_servicios_rf

from smn_automotriz.smn_ingreso_movimiento
	inner join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.smn_ingresos_id = smn_automotriz.smn_ingreso_movimiento.smn_ingreso_id
	inner join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = smn_automotriz.smn_ingreso_movimiento.smn_componente_rf
	inner join smn_base.smn_servicios on smn_base.smn_servicios.smn_servicios_id = smn_automotriz.smn_ingreso_movimiento.smn_servicios_rf
where
	smn_automotriz.smn_ingresos.smn_ingresos_id= ${fld:id} 