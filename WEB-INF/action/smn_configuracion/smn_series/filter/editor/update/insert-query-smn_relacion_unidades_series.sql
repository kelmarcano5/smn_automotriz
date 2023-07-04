INSERT INTO smn_automotriz.smn_relacion_unidades_series
(
	smn_relacion_unidades_series_id,
	smn_series_id,
	smn_unidades_servicios_id
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_relacion_unidades_series},
	${fld:id},
	${fld:smn_unidades_servicios_id}
)
