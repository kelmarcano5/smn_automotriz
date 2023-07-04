
select
		smn_automotriz.smn_documento.*,
		(select smn_automotriz.smn_tipo_documento.tdc_codigo || ' - ' || smn_automotriz.smn_tipo_documento.tdc_nombre from  smn_automotriz.smn_tipo_documento  where smn_automotriz.smn_tipo_documento.smn_tipo_documento_id is not null  and smn_automotriz.smn_tipo_documento.smn_tipo_documento_id=smn_automotriz.smn_documento.smn_tipo_documento_id  order by smn_automotriz.smn_tipo_documento.tdc_nombre ) as smn_tipo_documento_id_combo,
	(select smn_base.smn_transaccion_general.trg_codigo || ' - ' || smn_base.smn_transaccion_general.trg_descripcion from  smn_base.smn_transaccion_general  where smn_base.smn_transaccion_general.smn_transaccion_general_id is not null  and smn_base.smn_transaccion_general.smn_transaccion_general_id=smn_automotriz.smn_documento.smn_transaccion_general_rf  order by smn_base.smn_transaccion_general.trg_descripcion ) as smn_transaccion_general_rf_combo
	
from
	smn_automotriz.smn_documento
where
	smn_documento_id = ${fld:id}
