select
		smn_automotriz.smn_horario.hor_descripcion
from
		smn_automotriz.smn_horario
where
		upper(smn_automotriz.smn_horario.hor_descripcion) = upper(${fld:hor_descripcion})
