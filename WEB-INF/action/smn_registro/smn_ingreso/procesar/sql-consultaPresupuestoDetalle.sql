select
	case
		when smn_base.smn_componentes.cmp_precio_moneda_local is null then 0 else smn_base.smn_componentes.cmp_precio_moneda_local
	end as inm_precio_ml,
	case
		when smn_base.smn_componentes.cmp_cantidad is null then 0 else smn_base.smn_componentes.cmp_cantidad
	end as inm_cantidad,
	case
		when smn_base.smn_componentes.smn_moneda_rf is null then 0 else smn_base.smn_componentes.smn_moneda_rf
	end as smn_moneda_rf,
	case
		when smn_base.smn_componentes.cmp_monto_moneda_local is null then 0 else smn_base.smn_componentes.cmp_monto_moneda_local
	end as inm_monto_ml,
		case
		when smn_base.smn_componentes.cmp_monto_moneda_alterna is null then 0 else smn_base.smn_componentes.cmp_monto_moneda_alterna
	end as inm_monto_ma,
		case
		when smn_base.smn_componentes.cmp_precio_moneda_alterna is null then 0 else smn_base.smn_componentes.cmp_precio_moneda_alterna
	end as inm_precio_ma,
	smn_automotriz.smn_ingreso_movimiento.smn_servicios_rf

from 
	smn_automotriz.smn_ingreso_movimiento
	left join smn_base.smn_servicios on smn_base.smn_servicios.smn_servicios_id = smn_automotriz.smn_ingreso_movimiento.smn_servicios_rf
	left join smn_base.smn_servicios_componentes on smn_base.smn_servicios_componentes.smn_servicios_id = smn_base.smn_servicios.smn_servicios_id
	left join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = smn_base.smn_servicios_componentes.smn_componentes_id
where 
	smn_automotriz.smn_ingreso_movimiento.smn_ingreso_id = ${fld:id_ingreso}


