INSERT INTO smn_automotriz.smn_coberturas_servicios
(
	smn_coberturas_servicios_id,
	smn_coberturas_id,
	smn_unidades_servicios_id
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_coberturas_servicios},
	${fld:smn_coberturas_id},
	${fld:smn_unidades_servicios_id}
)
