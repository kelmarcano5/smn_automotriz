select
		smn_automotriz.smn_estado_presupuesto.epr_descripcion
from
		smn_automotriz.smn_estado_presupuesto
where
		upper(smn_automotriz.smn_estado_presupuesto.epr_descripcion) = upper(${fld:epr_descripcion})
