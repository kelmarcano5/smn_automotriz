select	
	smn_salud.smn_estado_presupuesto.*
from
	smn_salud.smn_estado_presupuesto 
where
	smn_estado_presupuesto_id is not null
	${filter}