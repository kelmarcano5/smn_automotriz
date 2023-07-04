select
		smn_automotriz.smn_no_registrados.nfi_nombres
from
		smn_automotriz.smn_no_registrados
where
		upper(smn_automotriz.smn_no_registrados.nfi_nombres) = upper(${fld:nfi_nombres})
