select
		smn_automotriz.smn_estatus.sta_codigo
from
		smn_automotriz.smn_estatus
where
		upper(smn_automotriz.smn_estatus.sta_codigo) = upper(${fld:sta_codigo})
