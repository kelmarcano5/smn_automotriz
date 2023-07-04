select
		smn_automotriz.smn_planes.pla_codigo
from
		smn_automotriz.smn_planes
where
		upper(smn_automotriz.smn_planes.pla_codigo) = upper(${fld:pla_codigo})
