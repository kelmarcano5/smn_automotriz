SELECT 
smn_base.smn_sucursales.smn_sucursales_id as id,
smn_base.smn_sucursales.suc_codigo||'-'||smn_base.smn_sucursales.suc_nombre as item 
from smn_base.smn_sucursales 
left outer join smn_automotriz.smn_ingreso_cola_virtual on smn_automotriz.smn_ingreso_cola_virtual.smn_sucursal_rf=smn_base.smn_sucursales.smn_sucursales_id
where smn_base.smn_sucursales.smn_sucursales_id=(SELECT smn_automotriz.smn_ingreso_cola_virtual.smn_sucursal_rf
from smn_automotriz.smn_ingreso_cola_virtual
where
smn_automotriz.smn_ingreso_cola_virtual.smn_entidad_rf=${fld:id} group by smn_automotriz.smn_ingreso_cola_virtual.smn_sucursal_rf)  GROUP BY id