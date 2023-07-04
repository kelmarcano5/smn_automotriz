select
		smn_automotriz.smn_localidad.loc_codigo,
	smn_automotriz.smn_localidad.loc_descripcion,
	smn_automotriz.smn_localidad.loc_status,
	smn_automotriz.smn_localidad.loc_fecha_registro
from
	smn_automotriz.smn_localidad 
where
	smn_automotriz.smn_localidad.smn_localidad_id = ${fld:id}
