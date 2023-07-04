select
		smn_automotriz.smn_estatus.sta_descripcion
from
		smn_automotriz.smn_estatus
where
		upper(smn_automotriz.smn_estatus.sta_descripcion) = upper(${fld:sta_descripcion})
