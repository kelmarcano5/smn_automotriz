select --smn_automotriz.smn_rel_diagnostico_servicio.*,
smn_base.smn_servicios.*
from smn_automotriz.smn_rel_diagnostico_servicio
left outer join smn_base.smn_servicios on smn_base.smn_servicios.smn_servicios_id = smn_automotriz.smn_rel_diagnostico_servicio.smn_servicio_rf
where smn_automotriz.smn_rel_diagnostico_servicio.smn_diagnostico_det_auto_id=${fld:id} order by smn_base.smn_servicios.svc_codigo desc