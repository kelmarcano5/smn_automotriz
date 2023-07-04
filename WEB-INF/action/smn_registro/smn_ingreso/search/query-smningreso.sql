select DISTINCT
	(select smn_automotriz.smn_documento.doc_codigo || ' - ' || smn_automotriz.smn_documento.doc_nombre from  smn_automotriz.smn_documento  where smn_automotriz.smn_documento.smn_documento_id is not null  and smn_automotriz.smn_documento.smn_documento_id=smn_automotriz.smn_ingresos.smn_documento_id  order by smn_automotriz.smn_documento.doc_nombre ) as smn_documento_id_combo,
	(select smn_base.smn_unidades_servicios.uns_codigo || ' - ' ||  smn_base.smn_unidades_servicios.uns_descripcion from  smn_base.smn_unidades_servicios  where smn_base.smn_unidades_servicios.smn_unidades_servicios_id is not null  and smn_base.smn_unidades_servicios.smn_unidades_servicios_id=smn_automotriz.smn_ingresos.smn_unidades_servicios_rf  order by smn_base.smn_unidades_servicios.uns_descripcion ) as smn_unidades_servicios_rf_combo,
	(select smn_automotriz.smn_documento.doc_codigo || ' - ' || smn_automotriz.smn_documento.doc_nombre from smn_automotriz.smn_documento where smn_automotriz.smn_documento.smn_documento_id is not null and smn_automotriz.smn_documento.smn_documento_id = smn_automotriz.smn_ingresos.smn_doc_orig order by smn_automotriz.smn_documento.doc_nombre) as smn_doc_orig,
	smn_automotriz.smn_ingresos.smn_documento_id,
	smn_automotriz.smn_ingresos.igs_num_ingreso,
	smn_automotriz.smn_ingresos.smn_unidades_servicios_rf,
	smn_automotriz.smn_ingresos.smn_areas_servicios_rf,
	smn_automotriz.smn_series.sri_codigo ||' - '|| smn_automotriz.smn_ingresos.igs_ticket as ticket2,
	smn_base.smn_auxiliar.aux_codigo || ' - ' || smn_base.smn_auxiliar.aux_descripcion as smn_auxiliar_rf,
	smn_automotriz.smn_ingresos.igs_monto_moneda_local,
	smn_automotriz.smn_ingresos.igs_estatus_financiero,
	smn_automotriz.smn_ingresos.igs_ticket as igs_ticket,
	to_char(smn_automotriz.smn_ingresos.igs_fecha_registro, 'YYYY-MM-DD') as igs_fecha_registro,
	smn_automotriz.smn_ingresos.smn_ingresos_id as smn_ingreso_id,
	case
			when smn_automotriz.smn_ruta_paciente.rta_estatus='AT' THEN 'En Servicio'
			when smn_automotriz.smn_ruta_paciente.rta_estatus='EA' THEN '${lbl:b_enaten}'
			when smn_automotriz.smn_ruta_paciente.rta_estatus='PE' THEN 'Pendiente'
			when smn_automotriz.smn_ruta_paciente.rta_estatus='AP' THEN 'Aprobado'
			when smn_automotriz.smn_ruta_paciente.rta_estatus='ED' THEN 'En Diagnostico'
			when smn_automotriz.smn_ruta_paciente.rta_estatus='IN' THEN 'Ingresado'
	end as rta_estatus,
	smn_automotriz.smn_ruta_paciente.smn_serie_id as serie
	
from 
	smn_automotriz.smn_ingresos
	left join smn_automotriz.smn_ruta_paciente on smn_automotriz.smn_ruta_paciente.smn_auxiliar_rf = smn_automotriz.smn_ingresos.smn_auxiliar_rf
	left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_ruta_paciente.smn_auxiliar_rf
	inner join smn_automotriz.smn_series on smn_automotriz.smn_series.sri_codigo = smn_automotriz.smn_ruta_paciente.smn_serie_id
where 
  smn_automotriz.smn_ingresos.smn_ingresos_id is not null and
		smn_automotriz.smn_ingresos.smn_entidades_rf = ${fld:entidad_prestador} and 
	  smn_automotriz.smn_ingresos.smn_areas_servicios_rf = ${fld:area_prestador} and
	  smn_automotriz.smn_ruta_paciente.smn_unidad_servicio_rf = ${fld:unidad_prestador}
order by 
	smn_automotriz.smn_ingresos.smn_ingresos_id desc
	  