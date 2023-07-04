select
		smn_automotriz.smn_tipo_coberturas.tco_descripcion
from
		smn_automotriz.smn_tipo_coberturas
where
		upper(smn_automotriz.smn_tipo_coberturas.tco_descripcion) = upper(${fld:tco_descripcion})
