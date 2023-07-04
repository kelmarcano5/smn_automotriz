INSERT INTO smn_automotriz.smn_estatus
(
	smn_estatus_id,
	sta_codigo,
	sta_descripcion,
	sta_fecha_registro
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_estatus},
	?,
	?,
	{d '${def:date}'}
)
