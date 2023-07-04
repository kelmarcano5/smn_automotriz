select
		smn_automotriz.smn_sector.smn_sector_id,
	${field}
from
	smn_automotriz.smn_sector
where
		smn_automotriz.smn_sector.smn_sector_id is not null
	${filter}
	
	
