select
	case
	when smn_automotriz.smn_localidad.loc_status='A' then '${lbl:b_activa_local}'
	when smn_automotriz.smn_localidad.loc_status='I' then '${lbl:b_inactiva_local}'
	end as loc_status_combo,
	smn_automotriz.smn_localidad.loc_codigo,
	smn_automotriz.smn_localidad.loc_descripcion,
	smn_automotriz.smn_localidad.loc_status,
	smn_automotriz.smn_localidad.loc_fecha_registro,
		smn_automotriz.smn_localidad.smn_localidad_id
	
from
	smn_automotriz.smn_localidad
where
	smn_localidad_id is not null
	${filter}
order by
		smn_localidad_id
