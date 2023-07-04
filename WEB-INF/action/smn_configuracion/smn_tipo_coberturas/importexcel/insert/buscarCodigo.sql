select
		smn_automotriz.smn_tipo_coberturas.tco_codigo
from
		smn_automotriz.smn_tipo_coberturas
where
		upper(smn_automotriz.smn_tipo_coberturas.tco_codigo) = upper(${fld:tco_codigo})
