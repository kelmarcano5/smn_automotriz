
select
		smn_automotriz.smn_contratante.smn_contratante_id,
	smn_automotriz.smn_contratante.smn_documento_id,
	smn_automotriz.smn_contratante.cnt_numero_control,
	smn_automotriz.smn_contratante.smn_clase_auxiliar_rf,
	smn_automotriz.smn_contratante.smn_auxiliar_rf,
	smn_automotriz.smn_contratante.smn_plan_id,
	smn_automotriz.smn_contratante.cnt_cantidad_citas,
	smn_automotriz.smn_contratante.cnt_fecha_registro,
	smn_automotriz.smn_contratante.cnt_fecha_de_inicio
	
from
	smn_automotriz.smn_contratante
