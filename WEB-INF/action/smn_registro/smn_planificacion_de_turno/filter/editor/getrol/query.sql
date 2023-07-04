select
	smn_automotriz.smn_rol.smn_rol_id as id,
	case
		when smn_automotriz.smn_rol.rol_tipo='SO' then '${lbl:b_solicitante}'
		when smn_automotriz.smn_rol.rol_tipo='AP' then '${lbl:b_autorizador}'
		when smn_automotriz.smn_rol.rol_tipo='AM' then '${lbl:b_ambos}'
	end as item
from 
	smn_automotriz.smn_rol
where smn_usuario_id = ${fld:id}