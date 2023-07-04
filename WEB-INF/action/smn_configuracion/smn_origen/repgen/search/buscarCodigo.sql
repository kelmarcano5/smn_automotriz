select
		smn_automotriz.smn_origen.ori_codigo
from
		smn_automotriz.smn_origen
where
		upper(smn_automotriz.smn_origen.ori_codigo) = upper(${fld:ori_codigo})
