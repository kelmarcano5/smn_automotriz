select
		smn_automotriz.smn_localidad.loc_descripcion
from
		smn_automotriz.smn_localidad
where
		upper(smn_automotriz.smn_localidad.loc_descripcion) = upper(${fld:loc_descripcion})
