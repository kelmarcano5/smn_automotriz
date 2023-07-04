select
		smn_automotriz.smn_series.sri_codigo
from
		smn_automotriz.smn_series
where
		upper(smn_automotriz.smn_series.sri_codigo) = upper(${fld:sri_codigo})
