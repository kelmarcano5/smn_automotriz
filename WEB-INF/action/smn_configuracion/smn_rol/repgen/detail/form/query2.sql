select
		smn_automotriz.smn_rol.rol_tipo,
	smn_automotriz.smn_rol.smn_corporacion_rf,
	smn_automotriz.smn_rol.smn_entidad_rf,
	smn_automotriz.smn_rol.smn_sucursal_rf,
	smn_automotriz.smn_rol.smn_area_servicio_rf,
	smn_automotriz.smn_rol.smn_unidad_servicio_rf,
	smn_automotriz.smn_rol.smn_estructura_organizacional_rf,
	smn_automotriz.smn_rol.rol_fecha_registro
from
	smn_automotriz.smn_rol 
where
	smn_automotriz.smn_rol.smn_rol_id = ${fld:id}
