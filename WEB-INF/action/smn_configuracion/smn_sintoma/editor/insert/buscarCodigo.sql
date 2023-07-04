select
		smn_automotriz.smn_sintoma.stm_codigo
from
		smn_automotriz.smn_sintoma
where
		upper(smn_automotriz.smn_sintoma.stm_codigo) = upper(${fld:stm_codigo})
