INSERT INTO smn_automotriz.smn_rel_cobertura_horario
(
	smn_rel_cobertura_horario_id,
	smn_coberturas_id,
	smn_horarios_id
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_rel_cobertura_horario},
	${fld:id},
	${fld:smn_horarios_id}
)
