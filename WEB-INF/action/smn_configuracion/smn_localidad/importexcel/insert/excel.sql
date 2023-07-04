INSERT INTO smn_automotriz.smn_localidad
(
	smn_localidad_id,
	loc_codigo,
	loc_descripcion,
	loc_status,
	loc_idioma,
	loc_usuario_id,
	loc_fecha_registro,
	loc_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_localidad},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
