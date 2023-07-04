select
		smn_automotriz.smn_coberturas.cob_codigo
from
		smn_automotriz.smn_coberturas
where
		upper(smn_automotriz.smn_coberturas.cob_codigo) = upper(${fld:cob_codigo})
