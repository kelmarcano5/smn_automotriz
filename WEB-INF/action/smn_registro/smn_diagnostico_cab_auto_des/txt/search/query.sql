select
		smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id,
	smn_automotriz.smn_ingresos.smn_ingresos_id,
	smn_automotriz.smn_ingresos.ctm_observaciones_id as ctm_observaciones_id_pl0,
select
		smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id,
select
		smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id,
	case
	when smn_automotriz.smn_diagnostico_cab_auto.dia_estatus='AC' then '${lbl:b_account_type_active}'
	when smn_automotriz.smn_diagnostico_cab_auto.dia_estatus='IN' then '${lbl:b_inactive}'
	end as dia_estatus_combo,
	smn_automotriz.smn_diagnostico_cab_auto.smn_ingresos_id,
	smn_automotriz.smn_diagnostico_cab_auto.smn_clase_auxiliar_rf,
	smn_automotriz.smn_diagnostico_cab_auto.smn_auxiliar_rf,
	smn_automotriz.smn_diagnostico_cab_auto.dia_estatus,
	smn_automotriz.smn_diagnostico_cab_auto.dia_fecha_registro
	
from
	smn_automotriz.smn_ingresos,
	smn_automotriz.smn_diagnostico_cab_auto
where
	smn_automotriz.smn_ingresos.smn_ingresos_id=smn_automotriz.smn_diagnostico_cab_auto.smn_ingresos_id
