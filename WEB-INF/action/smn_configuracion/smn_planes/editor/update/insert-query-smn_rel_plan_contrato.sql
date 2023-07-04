INSERT INTO smn_automotriz.smn_rel_plan_contrato
(
	smn_rel_plan_contrato_modulo_id,
	smn_planes_id,
	smn_contrato_modulo_id,
	rpc_vigencia,
	rpc_fecha_vigencia
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_rel_plan_contrato},
	${fld:id},
	${fld:smn_contrato_modulo_id},
	${fld:pla_inactivo},
	${fld:pla_vigencia_hasta}
)
