select
	smn_automotriz.smn_relacion_area_series.*,
	smn_base.smn_areas_servicios.*
from 
	smn_automotriz.smn_relacion_area_series,
	smn_base.smn_areas_servicios
where 
	smn_automotriz.smn_relacion_area_series.smn_series_id = ${fld:id} and
	smn_automotriz.smn_relacion_area_series.smn_areas_servicios_id = smn_base.smn_areas_servicios.smn_areas_servicios_id