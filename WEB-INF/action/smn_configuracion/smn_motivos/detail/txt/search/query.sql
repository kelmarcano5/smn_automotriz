select
		smn_automotriz.smn_motivos.mtv_codigo,
	smn_automotriz.smn_motivos.mtv_descripcion,
	smn_automotriz.smn_motivos.mtv_fecha_registro
from 
	smn_automotriz.smn_motivos
where
	smn_automotriz.smn_motivos.smn_motivos_id=${fld:id}
order by 
	smn_automotriz.smn_motivos.smn_motivos_id
