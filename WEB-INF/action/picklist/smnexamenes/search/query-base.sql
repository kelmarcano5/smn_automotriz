select	
	smn_base.smn_servicios.smn_servicios_id,
	smn_base.smn_servicios.svc_codigo,
	smn_base.smn_servicios.svc_descripcion,
	smn_base.smn_tipos_servicios.tsr_codigo ||' - '|| smn_base.smn_tipos_servicios.tsr_descripcion as smn_tipo_servicio_rf
from
	smn_base.smn_servicios 
	inner join smn_base.smn_tipos_servicios on smn_base.smn_tipos_servicios.smn_tipos_servicios_id = smn_base.smn_servicios.smn_tipo_servicio_rf
where
	smn_servicios_id is not null and 
	smn_tipo_servicio_rf = (select smn_tipos_servicios_id from smn_base.smn_tipos_servicios where tsr_descripcion = 'EXAMENES')
	${filter}