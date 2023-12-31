select	
	smn_automotriz.smn_series.smn_series_id, 
	smn_automotriz.smn_series.sri_codigo as sri_codigo_pl0,
	(select smn_automotriz.smn_series.sri_codigo || ' - ' || smn_automotriz.smn_series.sri_nombre from  smn_automotriz.smn_series  where smn_automotriz.smn_series.smn_series_id is not null  and smn_automotriz.smn_series.smn_series_id=smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.smn_series_id  order by smn_automotriz.smn_series.sri_nombre ) as smn_series_id_combo,
	case
		when smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_datos_pac='S' then '${lbl:b_si}'
		when smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_datos_pac='N' then '${lbl:b_no}'
	end as cvm_datos_pac_combo,
	case
		when smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_unidad_llamada='S' then '${lbl:b_si}'
		when smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_unidad_llamada='N' then '${lbl:b_no}'
	end as cvm_unidad_llamada_combo,
	case
		when smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_pacientes_espera='S' then '${lbl:b_si}'
		when smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_pacientes_espera='N' then '${lbl:b_no}'
	end as cvm_pacientes_espera_combo,
	case
		when smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_tiempo_aprox_espera='S' then '${lbl:b_si}'
		when smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_tiempo_aprox_espera='N' then '${lbl:b_no}'
	end as cvm_tiempo_aprox_espera_combo,
	smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.smn_series_id,
	smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_datos_pac,
	smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_unidad_llamada,
	smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_pacientes_espera,
	smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_tiempo_aprox_espera,
	smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.cvm_fecha_registro

from
	smn_automotriz.smn_series,
	smn_automotriz.smn_campos_visualizacion_monitores_dispositivos 
where
	smn_automotriz.smn_series.smn_series_id=smn_automotriz.smn_campos_visualizacion_monitores_dispositivos.smn_series_id 

