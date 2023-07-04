INSERT INTO smn_automotriz.smn_ingreso_observaciones
(
	smn_ingreso_observaciones_id,
  	smn_ingresos_id
  	smn_observaciones_ingresos_citas_id
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_ingreso_observaciones},
	${seq:currval@smn_automotriz.seq_smn_ingresos},
	${fld:smn_observaciones_ingresos_id}
)
