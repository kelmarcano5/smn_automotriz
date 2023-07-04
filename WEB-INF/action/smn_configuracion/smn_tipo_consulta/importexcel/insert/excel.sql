INSERT INTO smn_automotriz.smn_tipo_consulta
(
	smn_tipo_consulta_id,
	tcs_codigo,
	tcs_nombre,
	tcs_idioma,
	tcs_usuario_id,
	tcs_fecha_registro,
	tcs_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_tipo_consulta},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
