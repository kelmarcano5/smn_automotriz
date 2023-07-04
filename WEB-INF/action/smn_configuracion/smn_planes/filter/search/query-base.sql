select	
	case
		when smn_automotriz.smn_planes.pla_inactivo='S' then '${lbl:b_yes}'
		when smn_automotriz.smn_planes.pla_inactivo='N' then '${lbl:b_not}'
	end as pla_inactivo_combo,
	(select smn_automotriz.smn_contrato_modulo.smn_contrato_base_rf || ' - ' || smn_automotriz.smn_contrato_modulo.smn_documento_id from  smn_automotriz.smn_contrato_modulo  where smn_automotriz.smn_contrato_modulo.smn_contrato_modulo_id is not null  and smn_automotriz.smn_contrato_modulo.smn_contrato_modulo_id=smn_automotriz.smn_planes.pla_modelo_contrato  order by smn_automotriz.smn_contrato_modulo.smn_documento_id ) as smn_documento_id_combo,
	smn_automotriz.smn_planes.pla_codigo,
	smn_automotriz.smn_planes.pla_descripcion,
	smn_automotriz.smn_planes.pla_vigencia_desde,
	smn_automotriz.smn_planes.pla_vigencia_hasta,
	smn_automotriz.smn_planes.pla_inactivo,
	smn_automotriz.smn_planes.pla_modelo_contrato,
	smn_automotriz.smn_planes.pla_fecha_registro,
	smn_automotriz.smn_planes.smn_planes_id

from
	smn_automotriz.smn_planes
where
	smn_planes_id is not null	
 	 	${filter}
order by 
	smn_planes_id