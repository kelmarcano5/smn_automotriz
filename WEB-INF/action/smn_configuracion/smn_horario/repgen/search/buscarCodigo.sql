select
		smn_automotriz.smn_horario.hor_codigo
from
		smn_automotriz.smn_horario
where
		upper(smn_automotriz.smn_horario.hor_codigo) = upper(${fld:hor_codigo})
