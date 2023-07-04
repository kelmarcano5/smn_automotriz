select smn_base.smn_prestadores_servicios.prs_clase_auxiliar as id,  smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre as item from  smn_base.smn_prestadores_servicios
inner join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_prestadores_servicios.prs_clase_auxiliar
where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_prestadores_servicios.prs_clase_auxiliar GROUP BY prs_clase_auxiliar, cla_codigo, cla_nombre
