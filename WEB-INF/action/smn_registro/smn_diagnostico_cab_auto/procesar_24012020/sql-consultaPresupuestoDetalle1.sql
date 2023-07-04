select DISTINCT
	case 
		when smn_base.smn_baremos_detalle_componente.bdc_precio_ml is null then 0 else smn_base.smn_baremos_detalle_componente.bdc_precio_ml
	end as inm_precio_ml,
	case 
		when smn_base.smn_baremos_detalle_componente.bdc_cantidad is null then 0 else smn_base.smn_baremos_detalle_componente.bdc_cantidad
	end as inm_cantidad,
	case 
		when smn_base.smn_baremos_detalle_componente.bdc_monto_ml is null then 0 else smn_base.smn_baremos_detalle_componente.bdc_monto_ml
 	end as inm_monto_ml,
	case 
		when smn_base.smn_baremos_detalle_componente.bdc_monto_ma is null then 0 else smn_base.smn_baremos_detalle_componente.bdc_monto_ma
	end as inm_monto_ma,
	case 
		when smn_base.smn_baremos_detalle_componente.bdc_precio_ma is null then 0 else smn_base.smn_baremos_detalle_componente.bdc_precio_ma
	end as inm_precio_ma,
	smn_base.smn_componentes.smn_moneda_rf as smn_moneda_rf,
	smn_automotriz.smn_rel_diagnostico_servicio.smn_servicio_rf as smn_servicios_rf,
	smn_base.smn_componentes.cmp_tipo_componente as smn_tipo_componentes_rf,
	smn_base.smn_componentes.smn_componentes_id as smn_componentes_rf,
	smn_base.smn_componentes.cmp_visible,
	smn_automotriz.smn_diagnostico_cab_auto.smn_auxiliar_rf_prest as smn_auxiliar_prest_rf
from 
	smn_automotriz.smn_diagnostico_det_auto
	inner join smn_automotriz.smn_diagnostico_cab_auto on smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id = 	smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_cab_auto_id
	inner join smn_automotriz.smn_rel_diagnostico_servicio on smn_automotriz.smn_rel_diagnostico_servicio.smn_diagnostico_det_auto_id = smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_det_auto_id
inner join smn_base.smn_servicios_componentes on smn_base.smn_servicios_componentes.smn_servicios_id = smn_automotriz.smn_rel_diagnostico_servicio.smn_servicio_rf
inner join smn_base.smn_componentes on smn_base.smn_componentes.smn_servicios_rf = smn_base.smn_servicios_componentes.smn_servicios_id
left outer join smn_base.smn_baremos_detalle_componente on smn_base.smn_baremos_detalle_componente.smn_componente_rf = smn_base.smn_componentes.smn_componentes_id
where 
	smn_automotriz.smn_diagnostico_cab_auto.smn_ingresos_id = ${fld:id_ingreso} and smn_base.smn_componentes.cmp_visible='S' and smn_base.smn_componentes.cmp_tipo_componente='SE'


