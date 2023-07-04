select
		smn_automotriz.smn_tipo_consulta.tcs_codigo
from
		smn_automotriz.smn_tipo_consulta
where
		upper(smn_automotriz.smn_tipo_consulta.tcs_codigo) = upper(${fld:tcs_codigo})
