select
	smn_automotriz.smn_localidad_sector.*,
	smn_automotriz.smn_sector.*
from 
	smn_automotriz.smn_localidad_sector,
	smn_automotriz.smn_sector
where 
	smn_automotriz.smn_localidad_sector.smn_localidad_id = ${fld:id} and
	smn_automotriz.smn_localidad_sector.smn_sector_id = smn_automotriz.smn_sector.smn_sector_id