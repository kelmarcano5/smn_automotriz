select
		smn_automotriz.smn_series.sri_nombre
from
		smn_automotriz.smn_series
where
		upper(smn_automotriz.smn_series.sri_nombre) = upper(${fld:sri_nombre})
