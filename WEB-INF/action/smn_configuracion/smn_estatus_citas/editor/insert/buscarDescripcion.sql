select
		smn_automotriz.smn_estatus_citas.eci_descripcion
from
		smn_automotriz.smn_estatus_citas
where
		upper(smn_automotriz.smn_estatus_citas.eci_descripcion) = upper(${fld:eci_descripcion})
