select
		smn_automotriz.smn_series.smn_serie_id,
	smn_automotriz.smn_series.sri_codigo,
	smn_automotriz.smn_series.sri_nombre,
	smn_automotriz.smn_series.sri_estatus,
	smn_automotriz.smn_series.sri_ultimo_numero,
	smn_automotriz.smn_series.sri_reinicio,
	smn_automotriz.smn_series.ctm_fecha_registro
from
	smn_automotriz.smn_series 
where
	smn_automotriz.smn_series.smn_series_id = ${fld:id}
