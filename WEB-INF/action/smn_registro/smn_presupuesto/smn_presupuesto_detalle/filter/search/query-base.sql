select
	(select smn_automotriz.smn_presupuesto.pre_numero_control from  smn_automotriz.smn_presupuesto  where smn_automotriz.smn_presupuesto.smn_presupuesto_id is not null  and smn_automotriz.smn_presupuesto.smn_presupuesto_id=smn_automotriz.smn_presupuesto_detalle.smn_presupuesto_id  order by smn_automotriz.smn_presupuesto.pre_numero_control ) as smn_presupuesto_id_combo,
	smn_automotriz.smn_presupuesto_detalle.smn_presupuesto_id,
	smn_base.smn_servicios.svc_codigo||' - '||smn_base.smn_servicios.svc_descripcion as smn_servicios_rf,
	case 
		when smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf='SE' THEN smn_base.smn_servicios.svc_codigo||' - '||smn_base.smn_servicios.svc_descripcion
		when smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf='IT' THEN (select smn_base.smn_item.itm_nombre from smn_base.smn_item where smn_base.smn_item.smn_item_id = smn_automotriz.smn_presupuesto_detalle.smn_item_rf)
	end as smn_componentes_rf,
	smn_automotriz.smn_presupuesto_detalle.prd_cantidad,
	smn_automotriz.smn_presupuesto_detalle.prd_precio,
	smn_automotriz.smn_presupuesto_detalle.smn_moneda_rf,
	smn_automotriz.smn_presupuesto_detalle.prd_precio_ma,
		smn_automotriz.smn_presupuesto_detalle.prd_moneda_alterna,
	smn_automotriz.smn_presupuesto_detalle.prd_monto_moneda_local,
	smn_automotriz.smn_presupuesto_detalle.prd_fecha_registro,
	smn_automotriz.smn_presupuesto_detalle.smn_presupuesto_detalle_id,
	smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf as tipo_comp,
	case
		when smn_automotriz.smn_presupuesto_detalle.prd_estatus='RE' then '${lbl:b_registe}'
		when smn_automotriz.smn_presupuesto_detalle.prd_estatus='GE' then '${lbl:b_generate}'
		when smn_automotriz.smn_presupuesto_detalle.prd_estatus='RZ' then 'Rechazado'
		when smn_automotriz.smn_presupuesto_detalle.prd_estatus='AP' then 'Aprobado'
	end as prd_estatus,	
	smn_automotriz.smn_presupuesto_detalle.prd_moneda_alterna+smn_automotriz.smn_presupuesto_detalle.prd_monto_incremento_ma as monto_incremento

from 
	smn_automotriz.smn_presupuesto_detalle
	left join smn_base.smn_servicios on smn_base.smn_servicios.smn_servicios_id = smn_automotriz.smn_presupuesto_detalle.smn_servicios_rf
	left join smn_base.smn_item on smn_base.smn_item.smn_item_id = smn_automotriz.smn_presupuesto_detalle.smn_componentes_rf
	--left join smn_base.smn_nivel_estructura on smn_base.smn_nivel_estructura.smn_nivel_estructura_id = smn_presupuesto_detalle.smn_componentes_rf
where
	smn_presupuesto_detalle_id is not null	
 	 ${filter}
order by 
	smn_presupuesto_detalle_id