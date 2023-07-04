INSERT INTO smn_automotriz.smn_diagnostico_cab_auto
(
	smn_diagnostico_cab_auto_id,
	smn_ingresos_id,
	smn_clase_auxiliar_rf,
	smn_auxiliar_rf,
	dia_estatus,
	dia_fecha_registro
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_diagnostico_cab_auto},
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
