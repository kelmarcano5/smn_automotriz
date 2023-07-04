select
	smn_automotriz.smn_motivos.mtv_codigo,
	smn_automotriz.smn_motivos.mtv_descripcion,
	smn_automotriz.smn_motivos.mtv_idioma,
	smn_automotriz.smn_motivos.mtv_usuario,
	smn_automotriz.smn_motivos.mtv_fecha_registro,
	smn_automotriz.smn_motivos.mtv_hora,
		smn_automotriz.smn_motivos.smn_motivos_id
	
from
	smn_automotriz.smn_motivos
where
	smn_motivos_id is not null
	${filter}
order by
		smn_motivos_id
