select
		smn_automotriz.smn_dispositivos.dis_codigo,
	smn_automotriz.smn_dispositivos.dis_nombre,
	smn_automotriz.smn_dispositivos.dis_empresa,
	smn_automotriz.smn_dispositivos.dis_sucursal,
	smn_automotriz.smn_dispositivos.dis_area_servicio,
	smn_automotriz.smn_dispositivos.dis_unidad_servicio,
	smn_automotriz.smn_dispositivos.dis_tipo_dispositivo,
	smn_automotriz.smn_dispositivos.dis_serial,
	smn_automotriz.smn_dispositivos.dis_ip_address,
	smn_automotriz.smn_dispositivos.dis_fecha_registro,
	smn_automotriz.smn_dispositivos.dis_codigo,
	smn_automotriz.smn_dispositivos.dis_nombre,
	smn_automotriz.smn_dispositivos.smn_entidades_rf,
	smn_automotriz.smn_dispositivos.smn_sucursales_rf,
	smn_automotriz.smn_dispositivos.smn_areas_servicios_rf,
	smn_automotriz.smn_dispositivos.dis_fecha_registro,
	smn_automotriz.smn_dispositivos.smn_dispositivos_id,
	smn_automotriz.smn_dispositivos.dis_codigo,
	smn_automotriz.smn_dispositivos.dis_nombre,
	smn_automotriz.smn_dispositivos.dis_tipo,
	smn_automotriz.smn_dispositivos.dis_mac_address,
	smn_automotriz.smn_dispositivos.smn_entidades_rf,
	smn_automotriz.smn_dispositivos.smn_sucursales_rf,
	smn_automotriz.smn_dispositivos.smn_areas_servicios_rf,
	smn_automotriz.smn_dispositivos.smn_unidad_servicio_rf,
	smn_automotriz.smn_dispositivos.dis_fecha_registro
from
	smn_automotriz.smn_dispositivos 
where
	smn_automotriz.smn_dispositivos.smn_dispositivos_id = ${fld:id}
