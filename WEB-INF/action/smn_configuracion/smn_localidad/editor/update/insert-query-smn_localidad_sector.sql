INSERT INTO smn_automotriz.smn_localidad_sector
(
	smn_rel_local_sector_id,
	smn_localidad_id,
	smn_sector_id
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_localidad_sector},
	${fld:id},
	${fld:smn_sector_id}
)
