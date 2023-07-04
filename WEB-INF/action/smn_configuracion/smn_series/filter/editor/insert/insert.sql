INSERT INTO smn_automotriz.smn_series
(
	smn_series_id,
	sri_codigo,
	sri_nombre,
	sri_estatus,
	sri_ultimo_numero,
	sri_reinicio,
	ctm_idioma,
	ctm_usuario_id,
	ctm_fecha_registro,
	ctm_hora
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_series},
	${fld:sri_codigo},
	${fld:sri_nombre},
	${fld:sri_estatus},
	${fld:sri_ultimo_numero},
	${fld:sri_reinicio},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
