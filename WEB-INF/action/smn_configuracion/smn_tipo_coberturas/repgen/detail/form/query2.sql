select
		smn_automotriz.smn_tipo_coberturas.tco_codigo,
	smn_automotriz.smn_tipo_coberturas.tco_descripcion,
	smn_automotriz.smn_tipo_coberturas.tco_fecha_registro
from
	smn_automotriz.smn_tipo_coberturas 
where
	smn_automotriz.smn_tipo_coberturas.smn_tipo_coberturas_id = ${fld:id}
