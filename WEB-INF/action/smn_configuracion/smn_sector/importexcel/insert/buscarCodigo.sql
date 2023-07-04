select
		smn_automotriz.smn_sector.sec_codigo
from
		smn_automotriz.smn_sector
where
		upper(smn_automotriz.smn_sector.sec_codigo) = upper(${fld:sec_codigo})
