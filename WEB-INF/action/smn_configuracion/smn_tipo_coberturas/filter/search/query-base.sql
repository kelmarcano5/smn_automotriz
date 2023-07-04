select
	smn_automotriz.smn_tipo_coberturas.tco_codigo,
	smn_automotriz.smn_tipo_coberturas.tco_descripcion,
	smn_automotriz.smn_tipo_coberturas.tco_idioma,
	smn_automotriz.smn_tipo_coberturas.tco_usuario,
	smn_automotriz.smn_tipo_coberturas.tco_fecha_registro,
	smn_automotriz.smn_tipo_coberturas.tco_hora,
		smn_automotriz.smn_tipo_coberturas.smn_tipo_coberturas_id
	
from
	smn_automotriz.smn_tipo_coberturas
where
	smn_tipo_coberturas_id is not null
	${filter}
order by
		smn_tipo_coberturas_id
