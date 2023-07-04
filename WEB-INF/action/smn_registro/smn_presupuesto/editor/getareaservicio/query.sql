SELECT 
smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id as id,
smn_base.smn_auxiliar_areas_servicios.tse_codigo||'-'||smn_base.smn_auxiliar_areas_servicios.tse_descripcion as item 
from smn_base.smn_auxiliar_unidades_negocios, smn_base.smn_auxiliar_sucursales, smn_base.smn_auxiliar_areas_servicios
where smn_base.smn_auxiliar_areas_servicios.tse_auxiliar_unidad_negocio=(SELECT smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id
from smn_base.smn_auxiliar_unidades_negocios
WHERE upper(smn_base.smn_auxiliar_unidades_negocios.tun_nombre)=upper(${fld:id})) OR
smn_base.smn_auxiliar_areas_servicios.tse_auxiliar_sucursal=(SELECT smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id
from smn_base.smn_auxiliar_sucursales
where
upper(smn_base.smn_auxiliar_sucursales.trs_nombre)=upper(${fld:id2})) and smn_base.smn_auxiliar_areas_servicios.tse_auxiliar_unidad_negocio=(SELECT smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id
from smn_base.smn_auxiliar_unidades_negocios
WHERE upper(smn_base.smn_auxiliar_unidades_negocios.tun_nombre)=upper(${fld:id})) group by id