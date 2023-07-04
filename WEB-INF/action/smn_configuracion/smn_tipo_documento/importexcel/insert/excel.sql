INSERT INTO smn_automotriz.smn_tipo_documento
(
	smn_tipo_documento_id,
	tdc_codigo,
	tdc_nombre,
	tdc_naturaleza,
	tdc_idioma,
	tdc_usuario_id,
	tdc_fecha_registro,
	tdc_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_tipo_documento},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
