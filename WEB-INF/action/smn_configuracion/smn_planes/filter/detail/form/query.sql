select
	smn_base.smn_entidades.ent_descripcion_corta,
	(select smn_automotriz.smn_contrato_modulo.smn_contrato_base_rf || ' - ' || smn_automotriz.smn_contrato_modulo.smn_documento_id from  smn_automotriz.smn_contrato_modulo  where smn_automotriz.smn_contrato_modulo.smn_contrato_modulo_id is not null  and smn_automotriz.smn_contrato_modulo.smn_contrato_modulo_id=smn_automotriz.smn_planes.pla_modelo_contrato  order by smn_automotriz.smn_contrato_modulo.smn_documento_id ) as smn_documento_id_combo,
	(select smn_base.smn_entidades.ent_codigo || ' - ' || smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades  where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_automotriz.smn_planes.pla_empresa  order by smn_base.smn_entidades.ent_descripcion_corta ) as ent_descripcion_corta_combo,
	case
	when smn_automotriz.smn_planes.pla_inactivo='S' then '${lbl:b_yes}'
	when smn_automotriz.smn_planes.pla_inactivo='N' then '${lbl:b_not}'
	end as pla_inactivo_combo,
	smn_automotriz.smn_planes.*
from
	smn_automotriz.smn_planes
	left outer join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_automotriz.smn_planes.pla_empresa
	left outer join smn_automotriz.smn_contrato_modulo on smn_automotriz.smn_contrato_modulo.smn_contrato_modulo_id = smn_automotriz.smn_planes.pla_modelo_contrato
where
	smn_planes_id = ${fld:id}
