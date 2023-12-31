select
		smn_automotriz.smn_citas_mov.smn_citas_id,
	smn_automotriz.smn_citas_mov.smn_documento_id,
	smn_automotriz.smn_citas_mov.ctm_num_control_cita,
	smn_automotriz.smn_citas_mov.ctm_consecutivo,
	smn_automotriz.smn_citas_mov.smn_servicios_rf,
	smn_automotriz.smn_citas_mov.smn_componente_rf,
	smn_automotriz.smn_citas_mov.ctm_accion,
	smn_automotriz.smn_citas_mov.smn_tipo_consulta_id,
	smn_automotriz.smn_citas_mov.smn_grupo_prestador_servicio_rf,
	smn_automotriz.smn_citas_mov.smn_prestador_servicio_rf,
	smn_automotriz.smn_citas_mov.ctm_fecha_cita,
	smn_automotriz.smn_citas_mov.ctm_turno_cita,
	smn_automotriz.smn_citas_mov.ctm_estatus_id,
	smn_automotriz.smn_citas_mov.smn_motivos_id,
	smn_automotriz.smn_citas_mov.smn_clase_auxiliar_rf,
	smn_automotriz.smn_citas_mov.smn_auxiliar_rf,
	smn_automotriz.smn_citas_mov.cts_ordenante_descripcion,
	smn_automotriz.smn_citas_mov.smn_sintoma_id,
	smn_automotriz.smn_citas_mov.cts_tipo_orden,
	smn_automotriz.smn_citas_mov.cts_num_orden_medica,
	smn_automotriz.smn_citas_mov.smn_entidades_rf,
	smn_automotriz.smn_citas_mov.smn_sucursales_rf,
	smn_automotriz.smn_citas_mov.smn_areas_servicios_rf,
	smn_automotriz.smn_citas_mov.smn_unidades_servicios_rf,
	smn_automotriz.smn_citas_mov.ctm_observaciones_id,
	smn_automotriz.smn_citas_mov.ctm_fecha_registro
from
	smn_automotriz.smn_citas_mov 
where
	smn_automotriz.smn_citas_mov.smn_citas_mov_id = ${fld:id}
