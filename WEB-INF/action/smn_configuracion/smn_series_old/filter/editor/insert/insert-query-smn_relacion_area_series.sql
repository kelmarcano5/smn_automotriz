INSERT INTO smn_automotriz.smn_relacion_area_series
(
	smn_rel_area_serie_id,
	smn_series_id,
	smn_areas_servicios_id
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_relacion_area_series},
	${seq:currval@smn_automotriz.seq_smn_series},
	${fld:smn_areas_servicios_id}
)
