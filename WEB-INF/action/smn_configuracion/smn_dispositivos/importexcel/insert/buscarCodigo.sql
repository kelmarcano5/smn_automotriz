select
		smn_automotriz.smn_dispositivos.dis_codigo
from
		smn_automotriz.smn_dispositivos
where
		upper(smn_automotriz.smn_dispositivos.dis_codigo) = upper(${fld:dis_codigo})
