select smn_automotriz.smn_observaciones.smn_observaciones_id as id, smn_automotriz.smn_observaciones.obs_codigo ||' - '|| smn_automotriz.smn_observaciones.obs_descripcion AS  item from smn_automotriz.smn_observaciones
where smn_automotriz.smn_observaciones.obs_tipo='OI'