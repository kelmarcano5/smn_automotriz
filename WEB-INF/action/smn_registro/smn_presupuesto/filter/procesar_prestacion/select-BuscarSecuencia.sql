select DISTINCT smn_automotriz.smn_relacion_unidad_paso.rup_secuencia 
from smn_automotriz.smn_relacion_unidad_paso
   LEFT OUTER JOIN smn_automotriz.smn_series on smn_automotriz.smn_series.smn_series_id = smn_automotriz.smn_relacion_unidad_paso.smn_serie_id
   LEFT OUTER JOIN smn_automotriz.smn_ingreso_cola_virtual on smn_automotriz.smn_ingreso_cola_virtual.smn_unidad_servicio_rf = smn_automotriz.smn_relacion_unidad_paso.smn_unidad_servicio_rf
   LEFT OUTER JOIN smn_base.smn_auxiliar on smn_base.smn_auxiliar.aux_codigo = ${fld:rta_numero_documento_identidad}
where smn_automotriz.smn_relacion_unidad_paso.smn_area_servicio_rf= ${fld:smn_area_servicio_rf}
   and smn_automotriz.smn_relacion_unidad_paso.smn_unidad_servicio_rf= ${fld:smn_unidad_servicio_rf}
   and smn_automotriz.smn_series.sri_codigo= ${fld:smn_serie_id}