select
	smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id,
	smn_automotriz.smn_diagnostico_cab_auto.smn_ingresos_id,
	smn_automotriz.smn_ingresos.ctm_observaciones_id as ctm_observaciones_id_pl0,
	case
	when smn_automotriz.smn_diagnostico_cab_auto.dia_estatus='AC' then '${lbl:b_account_type_active}'
	when smn_automotriz.smn_diagnostico_cab_auto.dia_estatus='IN' then '${lbl:b_inactive}'
	end as dia_estatus_combo,
	smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf_combo,
	smn_base.smn_auxiliar.aux_descripcion as smn_auxiliar_rf_combo,
	smn_automotriz.smn_diagnostico_cab_auto.dia_fecha_registro
	
from
	smn_automotriz.smn_diagnostico_cab_auto
	left outer join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.smn_ingresos_id = smn_automotriz.smn_diagnostico_cab_auto.smn_ingresos_id
	inner join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_automotriz.smn_diagnostico_cab_auto.smn_clase_auxiliar_rf
	inner join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_diagnostico_cab_auto.smn_auxiliar_rf

where
	smn_diagnostico_cab_auto_id is not null
	${filter}
order by
		smn_diagnostico_cab_auto_id
