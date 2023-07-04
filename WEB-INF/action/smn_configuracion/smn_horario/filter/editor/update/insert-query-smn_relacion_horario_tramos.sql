INSERT INTO smn_automotriz.smn_relacion_horario_tramos
(
	smn_rel_horario_tramo_id,
	smn_horarios_id,
	smn_tramos_id
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_relacion_horario_tramos},
	${fld:id},
	${fld:smn_tramos_id}
)
