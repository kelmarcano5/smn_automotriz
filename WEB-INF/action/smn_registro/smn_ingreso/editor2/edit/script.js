//document.form1.smn_doc_orig.value='${fld:smn_doc_orig@#,###,###}';
setComboValue('smn_doc_orig','${fld:smn_doc_orig}','form1');
setComboValue('smn_documento_id','${fld:smn_documento_id}','form1');
document.form1.igs_doc_origen.value='${fld:igs_doc_origen@#,###,###}';
document.form1.igs_num_ingreso.value='${fld:igs_num_ingreso@#,###,###}';
setComboValue('smn_entidades_rf','${fld:smn_entidades_rf}','form1');
setComboValue('smn_sucursales_rf','${fld:smn_sucursales_rf}','form1');
setComboValue('smn_areas_servicios_rf','${fld:smn_areas_servicios_rf}','form1');
setComboValue('smn_unidades_servicios_rf','${fld:smn_unidades_servicios_rf}','form1');
document.form1.ctm_observaciones_id.value='${fld:ctm_observaciones_id@js}';
document.form1.igs_ticket.value='${fld:igs_ticket@#,###,###}';
//document.form1.smn_clase_rf.value='${fld:smn_clase_rf@#,###,###}';
//document.form1.smn_auxiliar_rf.value='${fld:smn_auxiliar_rf@#,###,###}';
setComboValue('cts_clase_auxiliar','${fld:smn_clase_rf}','form1');
setComboValue('cts_auxiliar','${fld:smn_auxiliar_rf}','form1');
setComboValue('smn_contratante_id','${fld:smn_contratante_id}','form1');
document.form1.smn_auxiliar_sucursales_rf.value='${fld:smn_auxiliar_sucursales_rf@#,###,###}';
document.form1.smn_auxiliar_areas_servicios_rf.value='${fld:smn_auxiliar_areas_servicios_rf@#,###,###}';
document.form1.smn_auxilia_unidad_servicio_rf.value='${fld:smn_auxilia_unidad_servicio_rf@#,###,###}';
setComboValue('smn_motivos_id','${fld:smn_motivos_id}','form1');
document.form1.smn_observaciones_ingresos_id.value='${fld:smn_observaciones_ingresos_id@#,###,###}';
document.form1.igs_monto_moneda_local.value='${fld:igs_monto_moneda_local@#,###,##0.00}';
document.form1.smn_moneda_rf.value='${fld:smn_moneda_rf@#,###,###}';
document.form1.igs_monto_moneda_alterna.value='${fld:igs_monto_moneda_alterna@#,###,###}';
setComboValue('smn_sintoma_id','${fld:smn_sintoma_id}','form1');
document.form1.igs_estatus_financiero.value='${fld:igs_estatus_financiero@js}';
document.form1.id.value='${fld:smn_ingresos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.igs_kilometraje.value='${fld:igs_kilometraje@js}';
document.form1.igs_serial_bateria.value='${fld:igs_serial_bateria@js}';

<rows>

	var id = "${fld:smn_sintoma_id}";
	var item = "${fld:item}";
	//var precio = "${fld:precio}"; calcularprecioingrediente(this, this)data-precio=\"'+precio+'\"

	var fila ='<label id="item">'+
				'<input name="smn_sintoma_id" id="smn_sintoma_id" type="checkbox" value="'+id+'" style="width:10px" onclick=\"concatenaritem(this, this);\" data-name=\"'+item+'\" checked>'+item+
			   '</label><br>';
					
   elemento.innerHTML += fila;

    //setCheckboxValue('smn_ingredientes_id','${fld:smn_ingredientes_id}','form1');
   
</rows>

<rows>

	var id = "${fld:smn_observaciones_ingresos_id}";
	var item = "${fld:item}";

	var fila ='<label id="item">'+
				'<input name="smn_observaciones_ingresos_id" id="smn_observaciones_ingresos_id" type="checkbox" value="'+id+'" style="width:10px" onclick=\"concatenaritem(this, this);\" data-name=\"'+item+'\" checked>'+item+
			   '</label><br>';
					
   elemento.innerHTML += fila;

    //setCheckboxValue('smn_ingredientes_id','${fld:smn_ingredientes_id}','form1');
   
</rows>

 

