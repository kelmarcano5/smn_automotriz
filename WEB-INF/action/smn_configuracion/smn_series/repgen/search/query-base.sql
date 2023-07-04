select
		smn_automotriz.smn_series.smn_series_id,
	${field}
from
	smn_automotriz.smn_series
where
		smn_automotriz.smn_series.smn_series_id is not null
	${filter}
	
	
