select smn_base.smn_entidades.smn_entidades_id as id,
 smn_base.smn_entidades.ent_codigo || ' - ' || smn_base.smn_entidades.ent_descripcion_corta as item 
from smn_base.smn_entidades
inner join smn_seguridad.s_user on smn_seguridad.s_user.userlogin = smn_base.smn_entidades.ent_usuario
inner join smn_base.smn_usuarios on smn_base.smn_usuarios.smn_user_rf  = smn_seguridad.s_user.user_id
where
smn_base.smn_usuarios.smn_usuarios_id=${fld:id}

