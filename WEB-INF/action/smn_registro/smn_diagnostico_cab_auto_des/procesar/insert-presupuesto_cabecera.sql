INSERT INTO smn_automotriz.smn_presupuesto
(
	smn_presupuesto_id,
	smn_documento_id,
	smn_entidades_rf,
	smn_sucursales_rf,
	smn_clase_auxiliar_rf,
	smn_auxiliar_rf,
	smn_clase_ord_rf,
	smn_auxiliar_ord_rf,
	smn_baremo_rf,
	smn_auxiliar_sucursales_rf,
	smn_auxiliar_areas_servicios_rf,
	smn_auxiliar_unidades_servicios_rf,
	pre_vigencia_hasta,
	pre_monto_ml,
	pre_monto_ma,
	smn_estado_presupuesto_id,
	pre_idioma,
	pre_usuario,
	pre_fecha_registro,
	pre_hora,
	smn_tabla_origen_rf,
	smn_documento_origen_rf,
	smn_ingresos_id

)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_presupuesto},
	(select smn_automotriz.smn_documento.smn_documento_id from smn_automotriz.smn_documento where smn_automotriz.smn_documento.doc_codigo='PRES'),
	${fld:smn_entidades_rf},
	0,
	${fld:smn_clase_rf},
	${fld:smn_auxiliar_rf},
	0,
	${fld:smn_contratante_id},
	(select smn_base.smn_baremos.smn_baremos_id as id from smn_base.smn_baremos where bar_tipo = 'G' and bar_codigo = 'EGR01' limit 1),
	${fld:smn_auxiliar_sucursales_rf},
	${fld:smn_auxiliar_areas_servicios_rf},
	${fld:smn_auxilia_unidad_servicio_rf},
	{d '${def:date}'},
	${fld:igs_monto_moneda_local},
	${fld:igs_monto_moneda_alterna},
	1,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	'smn_diagnostico_cabecera',
	(select smn_automotriz.smn_documento.smn_documento_id from smn_automotriz.smn_documento where smn_automotriz.smn_documento.doc_codigo='PRES'),
	${fld:smn_ingresos_id}
);


