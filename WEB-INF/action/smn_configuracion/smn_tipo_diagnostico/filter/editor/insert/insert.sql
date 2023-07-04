INSERT INTO smn_automotriz.smn_tipo_diagnostico
(
	smn_tipo_diagnostico_id,
	dgn_codigo,
	dgn_descripcion,
	dgn_tipo,
	dgn_idioma,
	dgn_usuario,
	dgn_fecha_registro,
	dgn_hora
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_tipo_diagnostico},
	${fld:dgn_codigo},
	${fld:dgn_descripcion},
	${fld:dgn_tipo},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
