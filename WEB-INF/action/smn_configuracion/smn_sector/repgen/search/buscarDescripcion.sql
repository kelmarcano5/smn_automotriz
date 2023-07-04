select
		smn_automotriz.smn_sector.sec_descripcion
from
		smn_automotriz.smn_sector
where
		upper(smn_automotriz.smn_sector.sec_descripcion) = upper(${fld:sec_descripcion})
