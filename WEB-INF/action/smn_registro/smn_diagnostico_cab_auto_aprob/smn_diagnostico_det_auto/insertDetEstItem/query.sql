select smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_det_auto_id as id_det, 
	smn_base.smn_componentes.smn_componentes_id as comp_id, 
	case 
	 when smn_base.smn_componentes.cmp_cantidad IS NULL then 1 else smn_base.smn_componentes.cmp_cantidad
	end as cant,
	smn_automotriz.smn_rel_diagnostico_servicio.smn_servicio_rf as serv, 
	smn_base.smn_componentes.cmp_tipo_componente as tipo, 
	smn_base.smn_componentes.cmp_forma_calculo as forma, 
	smn_base.smn_componentes.cmp_visible as vis, 
	case 
	 when smn_base.smn_componentes.cmp_porcentaje IS NULL then 0 else smn_base.smn_componentes.cmp_porcentaje
	end as por,
	case 
	 when smn_base.smn_componentes.cmp_grupo_prestador IS NULL then 0 else smn_base.smn_componentes.cmp_grupo_prestador
	end as prest,
	case 
	 when smn_base.smn_componentes.smn_item_rf IS NULL then 0 else smn_base.smn_componentes.smn_item_rf
	end as nivel
from smn_automotriz.smn_diagnostico_det_auto
	inner join smn_automotriz.smn_rel_diagnostico_servicio on smn_automotriz.smn_rel_diagnostico_servicio.smn_diagnostico_det_auto_id = smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_det_auto_id
	inner join smn_base.smn_servicios_componentes on smn_base.smn_servicios_componentes.smn_servicios_id = smn_automotriz.smn_rel_diagnostico_servicio.smn_servicio_rf
	inner join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = smn_base.smn_servicios_componentes.smn_componentes_id
where smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_cab_auto_id=${fld:smn_diagnostico_cab_auto_id} 



