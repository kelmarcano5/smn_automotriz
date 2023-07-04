select
		smn_automotriz.smn_estado_presupuesto.epr_codigo
from
		smn_automotriz.smn_estado_presupuesto
where
		upper(smn_automotriz.smn_estado_presupuesto.epr_codigo) = upper(${fld:epr_codigo})
