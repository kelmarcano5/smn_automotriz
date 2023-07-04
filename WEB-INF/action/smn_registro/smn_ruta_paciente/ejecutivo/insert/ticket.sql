with rows as (
		select smn_automotriz.smn_series.sri_ultimo_numero+1 as numero, smn_automotriz.smn_series.sri_codigo as cod 
		from smn_automotriz.smn_series where smn_automotriz.smn_series.sri_codigo =${fld:smn_serie_id}
)
UPDATE smn_automotriz.smn_series  set sri_ultimo_numero= rows.numero
FROM rows
    where smn_automotriz.smn_series.sri_codigo = ${fld:smn_serie_id}