

select
	smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id as id_auxiliar
from
	smn_base.smn_auxiliar_persona_natural
where
	smn_base.smn_auxiliar_persona_natural.ant_num_doc_oficial = (select smn_base.smn_registros_usuarios.rgu_num_doc_oficial
																from smn_base.smn_registros_usuarios
																where smn_base.smn_registros_usuarios.smn_registros_usuarios_id = (select user_id
																											from ${schema}s_user
																											where ${schema}s_user.userlogin = '${def:user}'))
