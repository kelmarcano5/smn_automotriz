INSERT INTO smn_automotriz.smn_sintoma
(
	smn_sintoma_id,
	stm_codigo,
	stm_descripcion,
	stm_idioma,
	stm_usuario,
	stm_fecha_registro,
	stm_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_sintoma},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
