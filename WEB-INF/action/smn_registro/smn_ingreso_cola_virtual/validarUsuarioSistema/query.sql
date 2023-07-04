select ${fld:cedula} as ced, coalesce((select a.aux_codigo 
from smn_base.smn_auxiliar a
inner join smn_base.smn_clase_auxiliar c on
a.smn_clase_auxiliar_rf = c.smn_clase_auxiliar_id
where c.cla_codigo =  upper('VH')
and upper(a.aux_codigo) =  upper(${fld:cedula})), '') as cedula


