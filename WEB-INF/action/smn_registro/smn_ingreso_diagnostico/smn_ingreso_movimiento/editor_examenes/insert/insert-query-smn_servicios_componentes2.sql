INSERT INTO smn_automotriz.smn_rel_ingreso_mov_examenes
(
	smn_rel_ingreso_mov_examenes_id,
	smn_ingresos_mov_id,
	smn_servicios_id
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_rel_rel_ingreso_mov_examenes},
	${seq:currval@smn_automotriz.seq_smn_ingreso_movimiento},
	${fld:smn_servicios_id}
)