select
		smn_automotriz.smn_observaciones.obs_descripcion
from
		smn_automotriz.smn_observaciones
where
		upper(smn_automotriz.smn_observaciones.obs_descripcion) = upper(${fld:obs_descripcion})
