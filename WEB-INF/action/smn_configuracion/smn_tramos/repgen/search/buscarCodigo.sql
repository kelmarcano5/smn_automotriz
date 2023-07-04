select
		smn_automotriz.smn_tramos.trm_codigo
from
		smn_automotriz.smn_tramos
where
		upper(smn_automotriz.smn_tramos.trm_codigo) = upper(${fld:trm_codigo})
