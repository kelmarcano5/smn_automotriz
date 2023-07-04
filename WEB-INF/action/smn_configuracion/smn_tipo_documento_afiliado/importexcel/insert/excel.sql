INSERT INTO smn_automotriz.smn_tipo_documento_afiliado
(
	smn_tipo_documento_afiliado_id,
	tdo_codigo,
	tdo_descripcion,
	tdo_idioma,
	tdo_usuario,
	tdo_fecha_registro,
	tdo_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_tipo_documento_afiliado},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
