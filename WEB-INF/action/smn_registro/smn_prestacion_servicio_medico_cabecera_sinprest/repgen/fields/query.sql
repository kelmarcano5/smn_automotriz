select
	*
from
	smn_base.fields	
where
	smn_base.fields.action_root = '/action/smn_registro/smn_prestacion_servicio_medico_cabecera/repgen'
order by
	smn_base.fields.orden asc
	