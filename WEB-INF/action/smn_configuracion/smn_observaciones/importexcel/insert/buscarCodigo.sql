select
		smn_automotriz.smn_observaciones.obs_codigo
from
		smn_automotriz.smn_observaciones
where
		upper(smn_automotriz.smn_observaciones.obs_codigo) = upper(${fld:obs_codigo})
