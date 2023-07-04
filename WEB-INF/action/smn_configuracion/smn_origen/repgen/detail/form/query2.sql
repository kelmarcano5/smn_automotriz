select
		smn_automotriz.smn_origen.ori_codigo,
	smn_automotriz.smn_origen.ori_descripcion,
	smn_automotriz.smn_origen.ori_tipo,
	smn_automotriz.smn_origen.ori_fecha_registro
from
	smn_automotriz.smn_origen 
where
	smn_automotriz.smn_origen.smn_origen_id = ${fld:id}
