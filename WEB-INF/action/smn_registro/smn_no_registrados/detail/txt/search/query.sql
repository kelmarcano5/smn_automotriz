select
		smn_automotriz.smn_no_registrados.nfi_num_control,
	smn_automotriz.smn_no_registrados.nfi_apellidos,
	smn_automotriz.smn_no_registrados.nfi_nombres,
	smn_automotriz.smn_no_registrados.nfi_sexo,
	smn_automotriz.smn_no_registrados.nfi_telefono_fijo,
	smn_automotriz.smn_no_registrados.nfi_telefono_movil,
	smn_automotriz.smn_no_registrados.nfi_email,
	smn_automotriz.smn_no_registrados.nfi_fecha_registro
from 
	smn_automotriz.smn_no_registrados
where
	smn_automotriz.smn_no_registrados.smn_no_registrados_id=${fld:id}
order by 
	smn_automotriz.smn_no_registrados.smn_no_registrados_id
