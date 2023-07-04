INSERT INTO smn_automotriz.smn_observaciones
(
	smn_observaciones_id,
	obs_codigo,
	obs_descripcion,
	obs_tipo,
	obs_idioma,
	obs_usuario,
	obs_fecha_registro,
	obs_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_observaciones},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
