select
		smn_automotriz.smn_citas.smn_documento_id,
	smn_automotriz.smn_citas.cts_num_control,
	smn_automotriz.smn_citas.smn_entidades_rf,
	smn_automotriz.smn_citas.smn_sucursales_rf,
	smn_automotriz.smn_citas.cts_numero_ticket,
	smn_automotriz.smn_citas.smn_origen_id,
	smn_automotriz.smn_citas.cts_clase_auxiliar,
	smn_automotriz.smn_citas.cts_auxiliar,
	smn_automotriz.smn_citas.smn_condicion_financiera_rf,
	smn_automotriz.smn_citas.smn_contratante_id,
	smn_automotriz.smn_citas.smn_observaciones_id,
	smn_automotriz.smn_citas.smn_estatus_citas_id,
	smn_automotriz.smn_citas.cts_fecha_registro
from
	smn_automotriz.smn_citas 
where
	smn_automotriz.smn_citas.smn_citas_id = ${fld:id}
