select
	smn_automotriz.smn_relacion_unidades_series.*,
	smn_base.smn_unidades_servicios.*
from 
	smn_automotriz.smn_relacion_unidades_series,
	smn_base.smn_unidades_servicios
where 
	smn_automotriz.smn_relacion_unidades_series.smn_series_id = ${fld:id} and
	smn_automotriz.smn_relacion_unidades_series.smn_unidades_servicios_id = smn_base.smn_unidades_servicios.smn_unidades_servicios_id