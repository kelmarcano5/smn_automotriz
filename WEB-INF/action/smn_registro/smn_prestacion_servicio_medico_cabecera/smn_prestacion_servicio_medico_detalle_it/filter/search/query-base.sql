select
	smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestacion_servicio_medico_detalle_id,
	case
		when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_estatus='RE' then '${lbl:b_register}'
		when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_estatus='AP' then '${lbl:b_aprobated}'
		when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_estatus='RZ' then '${lbl:b_not_aprobated}'
	end as psd_estatus,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_fecha_registro,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_estatus_financiero as psd_estatus_cabecera,
	smn_base.smn_componentes.cmp_codigo ||' - '|| smn_base.smn_componentes.cmp_descripcion as smn_componentes_rf,
	smn_base.smn_item.itm_codigo ||' - '|| smn_base.smn_item.itm_nombre as smn_item_rf,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_monto_propuesto_ml as monto,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_monto_neto_propuesto_ml as monto_neto
	
from
	smn_automotriz.smn_prestacion_servicio_medico_detalle
	inner join smn_automotriz.smn_prestacion_servicio_medico_cabecera on smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_prestacion_servicio_medico_cabecera_id = smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestacion_servicio_medico_cabecera_id
	inner join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_componentes_rf
	inner join smn_base.smn_item on smn_base.smn_item.smn_item_id = smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_item_rf
where
	smn_prestacion_servicio_medico_detalle_id is not null and
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_tipo_componentes='IT'
		${filter}
order by
		smn_prestacion_servicio_medico_detalle_id
