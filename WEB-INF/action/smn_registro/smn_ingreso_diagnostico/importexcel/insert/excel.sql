INSERT INTO smn_automotriz.smn_ingresos
(
	smn_ingresos_id,
	smn_doc_orig,
	smn_documento_id,
	igs_doc_origen,
	igs_num_ingreso,
	smn_entidades_rf,
	smn_sucursales_rf,
	smn_areas_servicios_rf,
	smn_unidades_servicios_rf,
	ctm_observaciones_id,
	igs_ticket,
	smn_clase_rf,
	smn_auxiliar_rf,
	smn_contratante_id,
	smn_auxiliar_sucursales_rf,
	smn_auxiliar_areas_servicios_rf,
	smn_auxilia_unidad_servicio_rf,
	smn_motivos_id,
	smn_observaciones_ingresos_id,
	igs_monto_moneda_local,
	smn_moneda_rf,
	igs_monto_moneda_alterna,
	smn_sintoma_id,
	igs_estatus_financiero,
	igs_idioma,
	igs_usuario,
	igs_fecha_registro,
	igs_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_ingresos},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)