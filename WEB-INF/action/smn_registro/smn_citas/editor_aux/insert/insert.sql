INSERT INTO smn_base.smn_auxiliar
(
	smn_auxiliar_id,
	smn_naturaleza_auxiliar_rf,
	smn_clase_auxiliar_rf,
	aux_tipo_persona,
	aux_codigo,
	aux_descripcion,
	aux_apellidos,
	aux_nombres,
	aux_sectores_economicos_rf,
	aux_denom_comercial,
	aux_razon_social,
	aux_representante_legal,
	aux_tipo_doc_oficial_rf,
	aux_num_doc_oficial,
	aux_fecha_nac,
	aux_lugar_nac,
	aux_rif,
	aux_direccion_rf,
	aux_comunidad_rf,
	aux_auxiliar_corporacion_rf,
	aux_auxiliar_unidad_negocio_rf,
	aux_benef_pago,
	aux_cond_pago_rf,
	aux_condicion_financiera_rf,
	aux_cuenta_bancaria_rf,
	aux_maneja_sucursal,
	aux_persona_contacto,
	aux_titular_rf,
	aux_observacion,
	aux_idioma,
	aux_usuario,
	aux_fecha_registro,
	aux_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_auxiliar},
	'3',
	${fld:smn_clase_auxiliar_rf},
	${fld:aux_tipo_persona},
	${fld:aux_codigo},
	${fld:aux_descripcion},
	${fld:aux_apellidos},
	${fld:aux_nombres},
	${fld:aux_sectores_economicos_rf},
	${fld:aux_denom_comercial},
	${fld:aux_razon_social},
	${fld:aux_representante_legal},
	${fld:aux_tipo_doc_oficial_rf},
	${fld:aux_num_doc_oficial},
	${fld:aux_fecha_nac},
	${fld:aux_lugar_nac},
	${fld:aux_rif},
	${fld:aux_direccion_rf},
	${fld:aux_comunidad_rf},
	${fld:aux_auxiliar_corporacion_rf},
	${fld:aux_auxiliar_unidad_negocio_rf},
	${fld:aux_benef_pago},
	${fld:aux_cond_pago_rf},
	${fld:aux_condicion_financiera_rf},
	${fld:aux_cuenta_bancaria_rf},
	${fld:aux_maneja_sucursal},
	${fld:aux_persona_contacto},
	${fld:aux_titular_rf},
	${fld:aux_observacion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
