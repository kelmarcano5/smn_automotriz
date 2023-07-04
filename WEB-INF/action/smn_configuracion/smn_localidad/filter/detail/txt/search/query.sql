select
	case
	when smn_automotriz.smn_localidad.loc_status='A' then '${lbl:b_activa_local}'
	when smn_automotriz.smn_localidad.loc_status='I' then '${lbl:b_inactiva_local}'
	end as loc_status_combo,
	smn_automotriz.smn_localidad.*
from
	smn_automotriz.smn_localidad
where
	smn_localidad_id = ${fld:id}
