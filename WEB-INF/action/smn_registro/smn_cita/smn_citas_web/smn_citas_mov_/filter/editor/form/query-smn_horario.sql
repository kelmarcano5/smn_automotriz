select smn_automotriz.smn_horario.smn_horarios_id as id, smn_automotriz.smn_horario.hor_codigo || ' - ' ||  smn_automotriz.smn_horario.hor_descripcion as item from smn_automotriz.smn_horario order by smn_automotriz.smn_horario.hor_descripcion