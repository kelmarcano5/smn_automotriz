select
	smn_automotriz.smn_estado_presupuesto.*
from
	smn_automotriz.smn_estado_presupuesto
where
	smn_estado_presupuesto_id = ${fld:id}
