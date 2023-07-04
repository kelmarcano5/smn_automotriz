with rows as (
	SELECT 
     1 
    FROM smn_automotriz.smn_relacion_unidad_paso
    LEFT OUTER JOIN smn_automotriz.smn_series on smn_automotriz.smn_series.smn_series_id = smn_automotriz.smn_relacion_unidad_paso.smn_serie_id
    where smn_automotriz.smn_series.sri_codigo = 'A' group by smn_automotriz.smn_relacion_unidad_paso.smn_unidad_servicio_rf limit 1
)select * from rows as secuencia
