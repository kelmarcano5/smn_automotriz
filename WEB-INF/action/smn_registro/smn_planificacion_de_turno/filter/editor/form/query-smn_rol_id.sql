select 
	smn_automotriz.smn_rol.smn_rol_id as id, 
	case
		when smn_automotriz.smn_rol.rol_tipo='SO' then smn_automotriz.smn_rol.smn_usuario_id || ' - ' || '${lbl:b_solicitante}'
		when smn_automotriz.smn_rol.rol_tipo='AP' then smn_automotriz.smn_rol.smn_usuario_id || ' - ' || '${lbl:b_autorizador}'
		when smn_automotriz.smn_rol.rol_tipo='AM' then smn_automotriz.smn_rol.smn_usuario_id || ' - ' || '${lbl:b_ambos}'
	end as item 
from smn_automotriz.smn_rol order by smn_automotriz.smn_rol.rol_tipo