select
	(select smn_automotriz.smn_documento.doc_codigo || ' - ' || smn_automotriz.smn_documento.doc_nombre from  smn_automotriz.smn_documento  where smn_automotriz.smn_documento.smn_documento_id is not null  and smn_automotriz.smn_documento.smn_documento_id=smn_automotriz.smn_ingresos.smn_documento_id  order by smn_automotriz.smn_documento.doc_nombre ) as smn_documento_id_combo,
	(select smn_base.smn_unidades_servicios.uns_codigo || ' - ' ||  smn_base.smn_unidades_servicios.uns_descripcion from  smn_base.smn_unidades_servicios  where smn_base.smn_unidades_servicios.smn_unidades_servicios_id is not null  and smn_base.smn_unidades_servicios.smn_unidades_servicios_id=smn_automotriz.smn_ingresos.smn_unidades_servicios_rf  order by smn_base.smn_unidades_servicios.uns_descripcion ) as smn_unidades_servicios_rf_combo,
	(select smn_automotriz.smn_documento.doc_codigo || ' - ' || smn_automotriz.smn_documento.doc_nombre from smn_automotriz.smn_documento where smn_automotriz.smn_documento.smn_documento_id is not null and smn_automotriz.smn_documento.smn_documento_id = smn_automotriz.smn_ingresos.smn_doc_orig order by smn_automotriz.smn_documento.doc_nombre) as smn_doc_orig,
	smn_automotriz.smn_ingresos.smn_documento_id,
	smn_automotriz.smn_ingresos.igs_num_ingreso,
	smn_automotriz.smn_ingresos.smn_unidades_servicios_rf,
	smn_automotriz.smn_ingresos.smn_areas_servicios_rf,
	smn_automotriz.smn_ingresos.igs_ticket,
	(select smn_base.smn_auxiliar.aux_codigo || ' - ' || smn_base.smn_auxiliar.aux_descripcion from smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_ingresos.smn_auxiliar_rf) as smn_auxiliar_rf,
	smn_automotriz.smn_ingresos.igs_monto_moneda_local,
	smn_automotriz.smn_ingresos.igs_estatus_financiero,
	to_char(smn_automotriz.smn_ingresos.igs_fecha_registro, 'YYYY-MM-DD') as igs_fecha_registro,
	smn_automotriz.smn_ingresos.smn_ingresos_id as smn_ingreso_id,
	case
	when smn_automotriz.smn_ruta_paciente.rta_estatus='AT' THEN '${lbl:b_atend}'
	when smn_automotriz.smn_ruta_paciente.rta_estatus='EA' THEN '${lbl:b_enaten}'
		when smn_automotriz.smn_ruta_paciente.rta_estatus='PE' THEN 'Pendiente'
				when smn_automotriz.smn_ruta_paciente.rta_estatus='AP' THEN 'Aprobado'
	end as rta_estatus
from 
	smn_automotriz.smn_ingresos
	inner join smn_automotriz.smn_ruta_paciente on smn_automotriz.smn_ruta_paciente.rta_ticket = smn_automotriz.smn_ingresos.igs_ticket
-- where 
-- 	  smn_ingresos_id is not null and
-- 	  smn_entidades_rf = ${fld:entidad_prestador} and 
-- 	  smn_areas_servicios_rf = ${fld:area_prestador} and
-- 	  smn_automotriz.smn_ruta_paciente.smn_unidad_servicio_rf = ${fld:unidad_prestador} and
-- 	  igs_usuario = ${fld:usuario} 
order by 
	smn_ingreso_id desc