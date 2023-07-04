select
		smn_automotriz.smn_coberturas.cob_descripcion
from
		smn_automotriz.smn_coberturas
where
		upper(smn_automotriz.smn_coberturas.cob_descripcion) = upper(${fld:cob_descripcion})
