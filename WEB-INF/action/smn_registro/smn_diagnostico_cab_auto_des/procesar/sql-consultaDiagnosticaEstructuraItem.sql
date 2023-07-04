select 
	smn_automotriz.smn_diagnostico_det_estruc_item.smn_servicios_rf as smn_servicios_rf,
	smn_automotriz.smn_diagnostico_det_estruc_item.smn_componentes_rf as smn_componentes_rf,
	smn_automotriz.smn_diagnostico_det_estruc_item.smn_item_rf,
	case 
		when smn_automotriz.smn_diagnostico_det_estruc_item.dde_cantidad is null then 0 else smn_automotriz.smn_diagnostico_det_estruc_item.dde_cantidad
	end as prd_cantidad,
	case 	
		when smn_automotriz.smn_ingresos.igs_monto_moneda_local is null then 0 else smn_automotriz.smn_ingresos.igs_monto_moneda_local
	end as precio,
	case 
	when smn_automotriz.smn_ingresos.igs_monto_moneda_alterna is null then 0 else smn_automotriz.smn_ingresos.igs_monto_moneda_alterna
	end as precio_ma,
	case 
		when smn_base.smn_baremos_detalle.smn_moneda_rf is null then 0 else smn_base.smn_baremos_detalle.smn_moneda_rf
	end as smn_moneda_rf,
	case 
		when 	smn_base.smn_baremos_detalle.bad_cantidad*smn_base.smn_baremos_detalle.bad_precio_moneda_local is null then 0 
		else smn_base.smn_baremos_detalle.bad_cantidad*smn_base.smn_baremos_detalle.bad_precio_moneda_local
	end as prd_monto_moneda_local,
	smn_automotriz.smn_diagnostico_det_estruc_item.cmp_porcentaje,
	smn_automotriz.smn_diagnostico_det_estruc_item.smn_forma_calculo_rf,
	smn_automotriz.smn_diagnostico_det_estruc_item.smn_tipo_componente,
	smn_automotriz.smn_diagnostico_det_estruc_item.smn_grupo_prestador_rf,
	smn_automotriz.smn_diagnostico_det_estruc_item.smn_visible_rf,
	smn_automotriz.smn_diagnostico_cab_auto.smn_auxiliar_rf_prest as smn_auxiliar_prest_rf
		
from smn_automotriz.smn_diagnostico_det_estruc_item
	inner join smn_automotriz.smn_diagnostico_det_auto 
	on smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_det_auto_id = smn_automotriz.smn_diagnostico_det_estruc_item.smn_diagnostico_det_auto_id
	inner join smn_automotriz.smn_diagnostico_cab_auto 
	on smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id = smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_cab_auto_id
	left outer join smn_base.smn_nivel_estructura 
	on smn_base.smn_nivel_estructura.smn_nivel_estructura_id = smn_automotriz.smn_diagnostico_det_estruc_item.smn_componentes_rf
	left outer join smn_base.smn_baremos_detalle
	on smn_base.smn_baremos_detalle.smn_item_rf = smn_automotriz.smn_diagnostico_det_estruc_item.smn_item_rf
	left outer join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.smn_ingresos_id = smn_automotriz.smn_diagnostico_cab_auto.smn_ingresos_id
where
	smn_automotriz.smn_diagnostico_cab_auto.smn_ingresos_id=${fld:id_ingreso} and smn_automotriz.smn_diagnostico_det_estruc_item.smn_tipo_componente in('HO', 'IT')