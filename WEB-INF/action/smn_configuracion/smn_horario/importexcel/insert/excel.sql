INSERT INTO smn_automotriz.smn_horario
(
	smn_horarios_id,
	hor_codigo,
	hor_descripcion,
	hor_status,
	hor_idioma,
	hor_usuario_id,
	hor_fecha_registro,
	hor_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_horario},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
