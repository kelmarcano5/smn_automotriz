select
		smn_automotriz.smn_planes.pla_descripcion
from
		smn_automotriz.smn_planes
where
		upper(smn_automotriz.smn_planes.pla_descripcion) = upper(${fld:pla_descripcion})
