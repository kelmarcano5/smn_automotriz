select
	case
	when smn_automotriz.smn_no_registrados.nfi_sexo='MA' then '${lbl:b_male}'
	when smn_automotriz.smn_no_registrados.nfi_sexo='FE' then '${lbl:b_female}'
	end as nfi_sexo_combo,
	smn_automotriz.smn_no_registrados.nfi_num_control,
	smn_automotriz.smn_no_registrados.nfi_apellidos,
	smn_automotriz.smn_no_registrados.nfi_nombres,
	smn_automotriz.smn_no_registrados.nfi_sexo,
	smn_automotriz.smn_no_registrados.nfi_telefono_fijo,
	smn_automotriz.smn_no_registrados.nfi_telefono_movil,
	smn_automotriz.smn_no_registrados.nfi_email,
	smn_automotriz.smn_no_registrados.nfi_idioma,
	smn_automotriz.smn_no_registrados.nfi_usuario,
	smn_automotriz.smn_no_registrados.nfi_fecha_registro,
	smn_automotriz.smn_no_registrados.nfi_hora,
		smn_automotriz.smn_no_registrados.smn_no_registrados_id
	
from
	smn_automotriz.smn_no_registrados
where
	smn_no_registrados_id is not null
	${filter}
order by
		smn_no_registrados_id
