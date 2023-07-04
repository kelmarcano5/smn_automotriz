INSERT INTO smn_automotriz.smn_ingreso_sintomas
(
	smn_ingreso_sintomas_id,
	smn_ingresos_id,
	smn_sintomas_id
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_ingreso_sintomas},
	${seq:currval@smn_automotriz.seq_smn_ingresos},
	${fld:smn_sintoma_id}
)
