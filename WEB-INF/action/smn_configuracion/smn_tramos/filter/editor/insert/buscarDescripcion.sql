select
		smn_automotriz.smn_tramos.trm_descripcion
from
		smn_automotriz.smn_tramos
where
		upper(smn_automotriz.smn_tramos.trm_descripcion) = upper(${fld:trm_descripcion})
