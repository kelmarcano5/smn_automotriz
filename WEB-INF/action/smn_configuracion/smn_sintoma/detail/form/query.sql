select
	smn_automotriz.smn_sintoma.*
from
	smn_automotriz.smn_sintoma
where
	smn_sintoma_id = ${fld:id}
