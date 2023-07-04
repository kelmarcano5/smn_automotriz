select
	smn_automotriz.smn_estado_presupuesto.epr_codigo,
	smn_automotriz.smn_estado_presupuesto.epr_descripcion,
	smn_automotriz.smn_estado_presupuesto.epr_fecha_registro,
		smn_automotriz.smn_estado_presupuesto.smn_estado_presupuesto_id
	
from
	smn_automotriz.smn_estado_presupuesto
where
	smn_estado_presupuesto_id is not null
	${filter}
order by
		smn_estado_presupuesto_id
