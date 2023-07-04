select
		smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestacion_servicio_medico_detalle_id,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_prestacion_servicio_medico_cabecera_id,
	smn_automotriz.smn_ingreso_movimiento.smn_ingresos_mov_id,
	case
	when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_tipo_componentes='IT' then '${lbl:b_item}'
	when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_tipo_componentes='SE' then '${lbl:b_services}'
	when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_tipo_componentes='HO' then '${lbl:b_honorary}'
	end as psd_tipo_componentes_combo,
	case
	when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_estatus='RE' then '${lbl:b_register}'
	when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_estatus='AP' then '${lbl:b_aprobated}'
	when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_estatus='RZ' then '${lbl:b_not_aprobated}'
	end as psd_estatus_combo,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestacion_servicio_medico_cabecera_id,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_mov_caja_detalle_id,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_ingresos_mov_id,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_tipo_componentes,
	smn_base.smn_auxiliar.aux_num_doc_oficial as documento_identidad,
	smn_base.smn_auxiliar.aux_nombres ||' '|| smn_base.smn_auxiliar.aux_apellidos as nombre_apellido,
	smn_automotriz.smn_ingresos.smn_documento_id as documento,
	smn_automotriz.smn_ingresos.smn_ingresos_id as ingreso,
	smn_automotriz.smn_ingresos.igs_fecha_registro as fecha_ingreso,
	smn_automotriz.smn_ingresos.igs_ticket as ticket,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_cantidad,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_estatus,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_fecha_registro
from
	smn_automotriz.smn_prestacion_servicio_medico_detalle
	inner join smn_automotriz.smn_prestacion_servicio_medico_cabecera on smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_prestacion_servicio_medico_cabecera_id = smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestacion_servicio_medico_cabecera_id
	inner join smn_automotriz.smn_ingreso_movimiento on smn_automotriz.smn_ingreso_movimiento.smn_ingresos_mov_id = smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_ingresos_mov_id
	inner join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_ingreso_movimiento.smn_auxiliar_rf
	inner join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.smn_ingresos_id = smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_ingresos_id
where
	smn_prestacion_servicio_medico_detalle_id is not null and
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_tipo_componentes='IT'
		${filter}
order by
		smn_prestacion_servicio_medico_detalle_id
