INSERT INTO smn_automotriz.smn_motivos
(
	smn_motivos_id,
	mtv_codigo,
	mtv_descripcion,
	mtv_idioma,
	mtv_usuario,
	mtv_fecha_registro,
	mtv_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_motivos},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
