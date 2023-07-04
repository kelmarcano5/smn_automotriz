INSERT INTO smn_automotriz.smn_tipo_coberturas
(
	smn_tipo_coberturas_id,
	tco_codigo,
	tco_descripcion,
	tco_idioma,
	tco_usuario,
	tco_fecha_registro,
	tco_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_tipo_coberturas},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
