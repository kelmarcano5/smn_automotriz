INSERT INTO smn_automotriz.smn_tramos
(
	smn_tramos_id,
	trm_codigo,
	trm_descripcion,
	trm_dia_semana,
	trm_hora_inicio,
	trm_hora_fin,
	trm_idioma,
	trm_usuario_id,
	trm_fecha_registro,
	trm_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_tramos},
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
