select s.sri_codigo, v.cvm_datos_pac, v.cvm_unidad_llamada, v.cvm_pacientes_espera, 
v.cvm_tiempo_aprox_espera, d.smn_entidades_rf, d.smn_sucursales_rf, d.smn_areas_servicios_rf,  d.smn_unidad_servicio_rf  
from smn_automotriz.smn_campos_visualizacion_monitores_dispositivos v
LEFT OUTER JOIN smn_automotriz.smn_dispositivos d on
v.smn_dispositivos_id = d.smn_dispositivos_id
LEFT OUTER JOIN smn_automotriz.smn_series s on
v.smn_series_id = s.smn_series_id
where upper(dis_codigo) = upper('0001') 