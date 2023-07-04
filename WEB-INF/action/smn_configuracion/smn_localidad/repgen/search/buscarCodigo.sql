select
		smn_automotriz.smn_localidad.loc_codigo
from
		smn_automotriz.smn_localidad
where
		upper(smn_automotriz.smn_localidad.loc_codigo) = upper(${fld:loc_codigo})
