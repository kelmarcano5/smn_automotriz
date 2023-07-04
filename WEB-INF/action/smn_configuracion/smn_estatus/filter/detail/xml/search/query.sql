select
	smn_automotriz.smn_estatus.*
from
	smn_automotriz.smn_estatus
where
	smn_estatus_id = ${fld:id}
