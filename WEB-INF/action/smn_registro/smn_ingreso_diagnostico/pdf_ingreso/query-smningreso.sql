select
	smn_automotriz.smn_ingresos.smn_ingresos_id,
	smn_automotriz.smn_ingresos.descripcion_sintoma,
	smn_automotriz.smn_ingresos.descripcion_observaciones,
	smn_automotriz.smn_ingresos.igs_num_ingreso,
	case 
		when smn_automotriz.smn_ingresos.igs_estatus_financiero='PE' then 'Pendiente'
		when smn_automotriz.smn_ingresos.igs_estatus_financiero='AP' then 'Aprobado'
	end as igs_estatus_financiero,
	smn_automotriz.smn_ingresos.igs_kilometraje,
	smn_automotriz.smn_ingresos.igs_serial_bateria,
	smn_automotriz.smn_documento.doc_codigo||' - '||smn_automotriz.smn_documento.doc_nombre as smn_documento_id,
	smn_base.smn_auxiliar.aux_codigo as placa,
	smn_base.smn_auxiliar.aux_descripcion as smn_auxiliar_rf,
	smn_base.smn_entidades.ent_descripcion_corta as smn_entidades_rf,
	smn_automotriz.smn_ingresos.igs_fecha_registro,
	smn_automotriz.smn_ingresos.igs_ticket as ticket,
	smn_base.smn_auxiliar.aux_descripcion as modelo,
	smn_base.smn_auxiliar.aux_apellidos as marca,
	contra.aux_descripcion as contratante,
	case 
		when smn_base.smn_auxiliar_contacto.smn_tipo_contactos_rf = 1 then smn_base.smn_auxiliar_contacto.auc_descripcion
	end as correo,
	case 
		when smn_base.smn_auxiliar_contacto.smn_tipo_contactos_rf = 2 then smn_base.smn_auxiliar_contacto.auc_descripcion
			when smn_base.smn_auxiliar_contacto.smn_tipo_contactos_rf = 3 then smn_base.smn_auxiliar_contacto.auc_descripcion
				when smn_base.smn_auxiliar_contacto.smn_tipo_contactos_rf = 4 then smn_base.smn_auxiliar_contacto.auc_descripcion
	end as telefono

from smn_automotriz.smn_ingresos
	inner join smn_automotriz.smn_documento on smn_automotriz.smn_documento.smn_documento_id = smn_automotriz.smn_ingresos.smn_documento_id
	inner join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_ingresos.smn_auxiliar_rf
	left outer join smn_base.smn_auxiliar_contacto on smn_base.smn_auxiliar_contacto.smn_auxiliar_rf = smn_base.smn_auxiliar.smn_auxiliar_id
	inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_automotriz.smn_ingresos.smn_entidades_rf
	left outer join smn_base.smn_auxiliar contra on contra.smn_auxiliar_id = smn_automotriz.smn_ingresos.smn_contratante_id
where
	smn_automotriz.smn_ingresos.smn_ingresos_id=${fld:id} 