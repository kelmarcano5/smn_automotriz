select
		smn_automotriz.smn_tipo_diagnostico.dgn_descripcion
from
		smn_automotriz.smn_tipo_diagnostico
where
		upper(smn_automotriz.smn_tipo_diagnostico.dgn_descripcion) = upper(${fld:dgn_descripcion})
