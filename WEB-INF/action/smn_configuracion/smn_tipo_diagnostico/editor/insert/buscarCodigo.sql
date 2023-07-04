select
		smn_automotriz.smn_tipo_diagnostico.dgn_codigo
from
		smn_automotriz.smn_tipo_diagnostico
where
		upper(smn_automotriz.smn_tipo_diagnostico.dgn_codigo) = upper(${fld:dgn_codigo})
