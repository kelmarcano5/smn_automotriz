setComboValue('smn_diagnostico_det_auto_id','${fld:smn_diagnostico_det_auto_id}','form1');
setComboValue('smn_componentes_rf','${fld:smn_componentes_rf}','form1');
setComboValue('smn_item_rf','${fld:smn_item_rf}','form1');
setComboValue('smn_servicio_rf','${fld:smn_servicio_rf}','form1');
document.form1.id.value='${fld:smn_diagnostico_det_estruc_item_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

