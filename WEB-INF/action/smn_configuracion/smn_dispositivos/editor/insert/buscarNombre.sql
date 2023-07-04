select
		smn_automotriz.smn_dispositivos.dis_nombre
from
		smn_automotriz.smn_dispositivos
where
		upper(smn_automotriz.smn_dispositivos.dis_nombre) = upper(${fld:dis_nombre})
