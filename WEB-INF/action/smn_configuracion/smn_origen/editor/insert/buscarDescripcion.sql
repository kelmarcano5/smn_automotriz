select
		smn_automotriz.smn_origen.ori_descripcion
from
		smn_automotriz.smn_origen
where
		upper(smn_automotriz.smn_origen.ori_descripcion) = upper(${fld:ori_descripcion})
