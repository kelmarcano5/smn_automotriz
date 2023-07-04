select
	smn_base.smn_componentes.cmp_precio_moneda_local as inm_precio_ml,
	smn_base.smn_componentes.cmp_cantidad as inm_cantidad,
	smn_base.smn_componentes.smn_moneda_rf as smn_moneda_rf,
	smn_base.smn_componentes.cmp_monto_moneda_local as inm_monto_ml,
	smn_base.smn_componentes.cmp_monto_moneda_alterna as inm_monto_ma,
	smn_base.smn_componentes.cmp_precio_moneda_alterna as inm_precio_ma,
	smn_automotriz.smn_ingreso_movimiento.smn_servicios_rf

from 
	smn_automotriz.smn_ingreso_movimiento
	inner join smn_base.smn_servicios on smn_base.smn_servicios.smn_servicios_id = smn_automotriz.smn_ingreso_movimiento.smn_servicios_rf
	inner join smn_base.smn_servicios_componentes on smn_base.smn_servicios_componentes.smn_servicios_id = smn_base.smn_servicios.smn_servicios_id
	inner join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = smn_base.smn_servicios_componentes.smn_componentes_id
where 
	smn_automotriz.smn_ingreso_movimiento.smn_ingreso_id = ${fld:id_ingreso}


