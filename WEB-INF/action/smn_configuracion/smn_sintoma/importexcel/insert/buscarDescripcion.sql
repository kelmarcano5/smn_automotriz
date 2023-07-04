select
		smn_automotriz.smn_sintoma.stm_descripcion
from
		smn_automotriz.smn_sintoma
where
		upper(smn_automotriz.smn_sintoma.stm_descripcion) = upper(${fld:stm_descripcion})
