select 
		smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_prestacion_servicio_medico_cabecera_id,
	case
	when smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_estatus='PE' then '${lbl:b_pending}'
	when smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_estatus='EA' then '${lbl:b_in_atention}'
	when smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_estatus='AT' then '${lbl:b_atending}'
	when smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_estatus='PA' then '${lbl:b_paid}'
	end as psc_estatus,
	smn_automotriz.smn_ingresos.smn_ingresos_id ||' - '|| smn_automotriz.smn_ingresos.smn_documento_id as smn_ingresos_id,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_mov_caja_cabecera_id,
	smn_base.smn_unidades_servicios.uns_codigo ||' - '||smn_base.smn_unidades_servicios.uns_descripcion as smn_unidades_servicios_rf,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_fecha_registro,
	smn_automotriz.smn_ingresos.igs_doc_origen as doc_origen,
	smn_automotriz.smn_documento.doc_codigo ||' - '|| smn_automotriz.smn_documento.doc_nombre as documento,
	smn_automotriz.smn_ingresos.igs_num_ingreso as document_num_ingreso,
	smn_automotriz.smn_ingresos.igs_ticket as ticket,
	smn_base.smn_auxiliar.aux_num_doc_oficial as documento_identidad,
	smn_base.smn_auxiliar.aux_nombres ||' '|| smn_base.smn_auxiliar.aux_apellidos as nombre_paciente,
	smn_base.smn_prestadores_servicios.prs_descripcion as prestador
from
	smn_automotriz.smn_prestacion_servicio_medico_cabecera
	inner join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.smn_ingresos_id = smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_ingresos_id
	inner join smn_automotriz.smn_documento on smn_automotriz.smn_documento.smn_documento_id = smn_automotriz.smn_ingresos.smn_documento_id
	inner join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_ingresos.smn_auxiliar_rf
	inner join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_unidades_servicios_rf
	inner join smn_base.smn_prestadores_servicios on smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id = smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_prestador_servicio_rf
	inner join smn_base.smn_usuarios on smn_base.smn_usuarios.smn_auxiliar_rf = smn_base.smn_prestadores_servicios.prs_auxiliar
	inner join smn_seguridad.s_user on smn_seguridad.s_user.user_id = smn_base.smn_usuarios.smn_user_rf
where
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_unidades_servicios_rf = ${fld:unidad_prestador} and
	smn_seguridad.s_user.userlogin = '${def:user}' and smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_estatus='PE' order by smn_automotriz.smn_ingresos.igs_ticket DESC
