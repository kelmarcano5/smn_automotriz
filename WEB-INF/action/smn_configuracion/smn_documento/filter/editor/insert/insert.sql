INSERT INTO smn_automotriz.smn_documento
(
	smn_documento_id,
	smn_tipo_documento_id,
	smn_documento_general_rf,
	doc_codigo,
	doc_nombre,
	doc_idioma,
	doc_usuario_id,
	doc_fecha_registro,
	doc_hora,
	doc_maneja_moneda_alt
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_documento},
	${fld:smn_tipo_documento_id},
	${fld:smn_documento_general_rf},
	${fld:doc_codigo},
	${fld:doc_nombre},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:doc_maneja_moneda_alt}
)
