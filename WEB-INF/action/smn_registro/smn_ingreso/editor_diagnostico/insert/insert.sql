INSERT INTO smn_automotriz.smn_diagnostico_cab_auto
(
	smn_diagnostico_cab_auto_id,
	smn_ingresos_id,
	smn_clase_auxiliar_rf,
	smn_auxiliar_rf,
	dia_estatus,
	dia_idioma,
	dia_usuario,
	dia_fecha_registro,
	dia_hora
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_diagnostico_cab_auto},
	${fld:smn_ingresos_id},
	${fld:smn_clase_auxiliar_rf},
	${fld:smn_auxiliar_rf},
	${fld:dia_estatus},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
