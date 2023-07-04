INSERT INTO smn_automotriz.smn_documento
(
	smn_documento_id,
	smn_tipo_documento_id,
	smn_transaccion_general_rf,
	doc_codigo,
	doc_nombre,
	doc_secuencia,
	doc_idioma,
	doc_usuario_id,
	doc_fecha_registro,
	doc_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_documento},
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
