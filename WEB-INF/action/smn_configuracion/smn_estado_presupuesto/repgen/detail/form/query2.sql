select
		smn_automotriz.smn_estado_presupuesto.epr_codigo,
	smn_automotriz.smn_estado_presupuesto.epr_descripcion,
	smn_automotriz.smn_estado_presupuesto.epr_fecha_registro
from
	smn_automotriz.smn_estado_presupuesto 
where
	smn_automotriz.smn_estado_presupuesto.smn_estado_presupuesto_id = ${fld:id}
