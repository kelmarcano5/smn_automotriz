select	
	smn_automotriz.smn_ingresos.smn_ingresos_id, 
	smn_automotriz.smn_ingresos.ctm_observaciones_id as ctm_observaciones_id_pl0,
	(select smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar  where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_automotriz.smn_diagnostico_cab_auto.smn_clase_auxiliar_rf  order by smn_base.smn_clase_auxiliar.cla_nombre ) as smn_clase_auxiliar_rf_combo,
	(select smn_base.smn_v_auxiliar.smn_codigo || ' - ' || smn_base.smn_v_auxiliar.smn_item from  smn_base.smn_v_auxiliar  where smn_base.smn_v_auxiliar.smn_v_auxiliar_id is not null  and smn_base.smn_v_auxiliar.smn_v_auxiliar_id=smn_automotriz.smn_diagnostico_cab_auto.smn_auxiliar_rf  order by smn_base.smn_v_auxiliar.smn_item ) as smn_auxiliar_rf_combo,
	case
		when smn_automotriz.smn_diagnostico_cab_auto.dia_estatus='AC' then '${lbl:b_account_type_active}'
		when smn_automotriz.smn_diagnostico_cab_auto.dia_estatus='IN' then '${lbl:b_inactive}'
	end as dia_estatus_combo,
	smn_automotriz.smn_diagnostico_cab_auto.*
from
	smn_automotriz.smn_ingresos,
	smn_automotriz.smn_diagnostico_cab_auto 
where
	smn_automotriz.smn_ingresos.smn_ingresos_id=smn_automotriz.smn_diagnostico_cab_auto.smn_ingresos_id 
 and 
	smn_diagnostico_cab_auto_id = ${fld:id}
