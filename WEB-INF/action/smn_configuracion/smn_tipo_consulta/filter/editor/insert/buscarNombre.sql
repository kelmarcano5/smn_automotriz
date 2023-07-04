select
		smn_automotriz.smn_tipo_consulta.tcs_nombre
from
		smn_automotriz.smn_tipo_consulta
where
		upper(smn_automotriz.smn_tipo_consulta.tcs_nombre) = upper(${fld:tcs_nombre})
